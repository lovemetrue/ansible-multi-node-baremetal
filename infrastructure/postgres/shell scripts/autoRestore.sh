#!/bin/bash
#
# PostgreSQL Patroni Restore Script
# Restores backup to Patroni cluster with safety checks
#

set -euo pipefail

readonly SCRIPT_NAME="$(basename "$0")"
readonly SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Configuration
readonly PATRONI_CONFIG="/etc/patroni/config.yml"
readonly DEFAULT_DATA_DIR="/var/lib/postgresql/15/main"
readonly LOG_FILE="/var/log/postgres_restore.log"

# Color codes
readonly RED='\033[0;31m'
readonly GREEN='\033[0;32m'
readonly YELLOW='\033[1;33m'
readonly BLUE='\033[0;34m'
readonly NC='\033[0m'

# Global variables
declare -g DATA_DIR=""
declare -g BACKUP_FILE=""
declare -g TEMP_DIR=""
declare -g IS_MASTER=false

trap 'cleanup_and_exit 130' SIGINT
trap 'cleanup_and_exit 143' SIGTERM
trap 'handle_error ${LINENO}' ERR

main() {
    local backup_file="${1:-}"
    
    if [[ -z "${backup_file}" ]]; then
        show_usage
        exit 1
    fi
    
    BACKUP_FILE="${backup_file}"
    
    log_info "Starting PostgreSQL restore process"
    
    check_prerequisites
    validate_backup_file
    determine_data_dir
    check_cluster_status
    perform_restore
    log_success "Restore completed successfully"
}

check_prerequisites() {
    log_info "Checking prerequisites"
    
    # Check if running as root or postgres
    if [[ "$(id -u)" != "0" ]] && [[ "$(id -un)" != "postgres" ]]; then
        log_error "Must be run as root or postgres user"
        exit 1
    fi
    
    # Check required commands
    local required_commands=("tar" "systemctl" "patronictl")
    for cmd in "${required_commands[@]}"; do
        if ! command -v "${cmd}" >/dev/null 2>&1; then
            log_error "Required command not found: ${cmd}"
            exit 1
        fi
    done
    
    log_success "Prerequisites check passed"
}

validate_backup_file() {
    log_info "Validating backup file: ${BACKUP_FILE}"
    
    if [[ ! -f "${BACKUP_FILE}" ]]; then
        log_error "Backup file not found: ${BACKUP_FILE}"
        exit 1
    fi
    
    # Check if file is a valid tar archive
    if ! tar -tzf "${BACKUP_FILE}" > /dev/null 2>&1; then
        log_error "Backup file is not a valid tar archive: ${BACKUP_FILE}"
        exit 1
    fi
    
    # Check backup size (minimum 1MB)
    local backup_size
    backup_size=$(stat -c %s "${BACKUP_FILE}")
    if [[ ${backup_size} -lt 1048576 ]]; then
        log_error "Backup file seems too small: ${backup_size} bytes"
        exit 1
    fi
    
    log_success "Backup file validation passed"
}

determine_data_dir() {
    log_info "Determining PostgreSQL data directory"
    
    # Try to get data_dir from Patroni config
    if [[ -f "${PATRONI_CONFIG}" ]]; then
        local config_data_dir
        config_data_dir=$(grep -A 10 "postgresql:" "${PATRONI_CONFIG}" | grep "data_dir" | awk '{print $2}' | tr -d '"' || true)
        
        if [[ -n "${config_data_dir}" ]]; then
            DATA_DIR="${config_data_dir}"
            log_success "Found data_dir in Patroni config: ${DATA_DIR}"
            return 0
        fi
    fi
    
    # Use default data directory
    DATA_DIR="${DEFAULT_DATA_DIR}"
    log_warning "Using default data directory: ${DATA_DIR}"
    
    # Verify data directory exists
    if [[ ! -d "${DATA_DIR}" ]]; then
        log_error "Data directory does not exist: ${DATA_DIR}"
        exit 1
    fi
}

check_cluster_status() {
    log_info "Checking cluster status"
    
    # Check if we're on master node
    local current_node
    current_node=$(hostname -f | tr '[:upper:]' '[:lower:]')
    
    if command -v jq >/dev/null 2>&1; then
        local cluster_info
        cluster_info=$(patronictl -c "${PATRONI_CONFIG}" list -f json 2>/dev/null || true)
        
        if [[ -n "${cluster_info}" ]]; then
            local master_node
            master_node=$(echo "${cluster_info}" | jq -r '.[] | select(.Role == "Leader") | .Member' 2>/dev/null | tr '[:upper:]' '[:lower:]' || true)
            
            if [[ "${current_node}" == "${master_node}" ]]; then
                IS_MASTER=true
                log_warning "Current node is master: ${current_node}"
                log_warning "Restoring on master node will cause cluster reconfiguration"
            else
                log_info "Current node is replica: ${current_node}"
            fi
        fi
    fi
    
    # Check disk space in data directory
    local available_space
    available_space=$(df "${DATA_DIR}" | awk 'NR==2 {print $4}')
    local backup_size
    backup_size=$(stat -c %s "${BACKUP_FILE}")
    local required_space=$((backup_size * 3))  # Need 3x space for extraction
    
    if [[ ${available_space} -lt ${required_space} ]]; then
        log_error "Insufficient disk space. Required: $((required_space / 1048576))MB, Available: $((available_space / 1024))MB"
        exit 1
    fi
    
    log_success "Disk space check passed"
}

perform_restore() {
    log_info "Starting restore process"
    
    # Create temporary directory for extraction
    TEMP_DIR=$(mktemp -d -p "/tmp" postgres_restore.XXXXXXXXXX)
    log_info "Using temporary directory: ${TEMP_DIR}"
    
    stop_patroni
    backup_existing_data
    extract_backup
    restore_data
    fix_permissions
    start_patroni
    wait_for_recovery
}

stop_patroni() {
    log_info "Stopping Patroni service"
    
    if systemctl is-active --quiet patroni; then
        log_info "Stopping Patroni..."
        systemctl stop patroni
        
        # Wait for Patroni to stop
        local timeout=30
        while systemctl is-active --quiet patroni && [[ ${timeout} -gt 0 ]]; do
            sleep 1
            ((timeout--))
        done
        
        if systemctl is-active --quiet patroni; then
            log_error "Failed to stop Patroni service"
            exit 1
        fi
        
        log_success "Patroni stopped successfully"
    else
        log_info "Patroni service is already stopped"
    fi
    
    # Ensure PostgreSQL is not running
    if pgrep -x "postgres" > /dev/null; then
        log_warning "PostgreSQL processes still running, forcing shutdown"
        pkill -x "postgres" || true
        sleep 5
    fi
}

backup_existing_data() {
    log_info "Backing up existing data"
    
    local backup_timestamp
    backup_timestamp=$(date +%Y-%m-%d_%H-%M-%S)
    local backup_name="data_backup_${backup_timestamp}.tar.gz"
    local backup_path="/var/backups/postgres/${backup_name}"
    
    mkdir -p "/var/backups/postgres"
    
    if [[ -d "${DATA_DIR}" && "$(ls -A "${DATA_DIR}")" ]]; then
        log_info "Creating backup of existing data: ${backup_path}"
        
        if tar -czf "${backup_path}" -C "${DATA_DIR}" . 2>/dev/null; then
            log_success "Existing data backed up to: ${backup_path}"
        else
            log_error "Failed to backup existing data"
            exit 1
        fi
    else
        log_info "Data directory is empty, no backup needed"
    fi
}

extract_backup() {
    log_info "Extracting backup file"
    
    log_info "Extracting: ${BACKUP_FILE} to ${TEMP_DIR}"
    
    if ! tar -xzf "${BACKUP_FILE}" -C "${TEMP_DIR}"; then
        log_error "Failed to extract backup file"
        exit 1
    fi
    
    # Check if backup has the expected structure
    if [[ ! -d "${TEMP_DIR}/backup" ]]; then
        log_error "Backup does not contain expected 'backup' directory"
        exit 1
    fi
    
    local extracted_size
    extracted_size=$(du -sh "${TEMP_DIR}/backup" | cut -f1)
    log_success "Backup extracted successfully: ${extracted_size}"
}

restore_data() {
    log_info "Restoring data to ${DATA_DIR}"
    
    # Clean data directory
    log_info "Cleaning data directory: ${DATA_DIR}"
    if [[ -d "${DATA_DIR}" ]]; then
        rm -rf "${DATA_DIR:?}"/*
    else
        mkdir -p "${DATA_DIR}"
    fi
    
    # Copy backup data
    log_info "Copying backup data..."
    if ! cp -r "${TEMP_DIR}/backup"/* "${DATA_DIR}"/; then
        log_error "Failed to copy backup data"
        exit 1
    fi
    
    # Create recovery signal file if this was a base backup
    if [[ ! -f "${DATA_DIR}/recovery.signal" && ! -f "${DATA_DIR}/standby.signal" ]]; then
        log_info "Creating recovery signal file"
        touch "${DATA_DIR}/recovery.signal"
    fi
    
    log_success "Data restored successfully"
}

fix_permissions() {
    log_info "Setting correct permissions"
    
    if [[ "$(id -u)" == "0" ]]; then
        chown -R postgres:postgres "${DATA_DIR}"
    fi
    
    chmod 700 "${DATA_DIR}"
    
    # Fix specific directory permissions
    local dirs=("pg_wal" "pg_log" "pg_xact")
    for dir in "${dirs[@]}"; do
        if [[ -d "${DATA_DIR}/${dir}" ]]; then
            chmod 700 "${DATA_DIR}/${dir}"
        fi
    done
    
    log_success "Permissions set correctly"
}

start_patroni() {
    log_info "Starting Patroni service"
    
    if systemctl start patroni; then
        log_success "Patroni service started"
    else
        log_error "Failed to start Patroni service"
        exit 1
    fi
}

wait_for_recovery() {
    log_info "Waiting for PostgreSQL recovery"
    
    local timeout=60
    local count=0
    
    while [[ ${count} -lt ${timeout} ]]; do
        if systemctl is-active --quiet patroni && \
           psql -t -c "SELECT 1;" >/dev/null 2>&1; then
            log_success "PostgreSQL is running and accepting connections"
            
            # Check if we're in recovery mode
            local recovery_status
            recovery_status=$(psql -t -c "SELECT pg_is_in_recovery();" | tr -d ' ' || echo "unknown")
            
            if [[ "${recovery_status}" == "t" ]]; then
                log_info "PostgreSQL is in recovery mode (replica)"
            else
                log_info "PostgreSQL is running as primary"
            fi
            
            return 0
        fi
        
        sleep 5
        ((count+=5))
        log_info "Waiting for PostgreSQL to start... (${count}/${timeout}s)"
    done
    
    log_error "PostgreSQL failed to start within ${timeout} seconds"
    log_info "Check logs with: sudo journalctl -u patroni -f"
    exit 1
}

cleanup_and_exit() {
    local exit_code=${1:-0}
    
    log_info "Cleaning up..."
    
    # Remove temporary directory
    if [[ -n "${TEMP_DIR}" && -d "${TEMP_DIR}" ]]; then
        rm -rf "${TEMP_DIR}"
        log_debug "Removed temporary directory: ${TEMP_DIR}"
    fi
    
    log_info "Cleanup completed"
    exit ${exit_code}
}

handle_error() {
    local line_number=$1
    log_error "Error occurred in ${SCRIPT_NAME} at line ${line_number}"
    
    # Try to start Patroni if it was stopped
    if ! systemctl is-active --quiet patroni; then
        log_info "Attempting to restart Patroni..."
        systemctl start patroni || true
    fi
    
    cleanup_and_exit 1
}

log() {
    local level="$1"
    local message="$2"
    local color="$3"
    local timestamp
    timestamp=$(date '+%Y-%m-%d %H:%M:%S')
    
    echo -e "${color}${timestamp} [${level}] ${message}${NC}" | tee -a "${LOG_FILE}"
}

log_info() { log "INFO" "$1" "${BLUE}"; }
log_success() { log "SUCCESS" "$1" "${GREEN}"; }
log_warning() { log "WARN" "$1" "${YELLOW}"; }
log_error() { log "ERROR" "$1" "${RED}"; }
log_debug() { 
    if [[ "${DEBUG:-false}" == "true" ]]; then
        log "DEBUG" "$1" "${NC}"
    fi
}

show_usage() {
    cat << EOF
PostgreSQL Patroni Restore Script

Usage: ${SCRIPT_NAME} <backup_file.tar.gz>

Examples:
  ${SCRIPT_NAME} /var/backups/postgres/2024-01-01_12-00-00/postgres_backup.tar.gz
  ${SCRIPT_NAME} /path/to/backup.tar.gz

Description:
  This script restores a PostgreSQL backup created with pg_basebackup to a Patroni cluster.
  It will:
  1. Stop Patroni service
  2. Backup existing data (if any)
  3. Extract and restore the backup
  4. Start Patroni service
  5. Wait for recovery to complete

WARNING: This will delete all existing data in the PostgreSQL data directory!
EOF
}

# Make sure we cleanup on exit
trap cleanup_and_exit EXIT

# Run main function with all arguments
main "$@"