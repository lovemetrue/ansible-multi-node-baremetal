#!/bin/bash
#
# PostgreSQL Patroni Cluster Backup Script
# Fixed version with directory creation
#

set -euo pipefail

readonly SCRIPT_NAME="$(basename "$0")"
readonly SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
readonly LOCKFILE="/var/run/${SCRIPT_NAME}.lock"

# Configuration
readonly BACKUP_DIR="/var/backups/postgres"
readonly LOG_FILE="/var/log/postgres_backup.log"
readonly RETENTION_DAYS=7
readonly PATRONI_CONFIG="/etc/patroni/config.yml"
readonly BACKUP_TIMEOUT=7200

# Color codes
readonly RED='\033[0;31m'
readonly GREEN='\033[0;32m'
readonly YELLOW='\033[1;33m'
readonly BLUE='\033[0;34m'
readonly NC='\033[0m'

# Global variables
declare -g BACKUP_START_TIME
declare -g TEMP_DIR
declare -g BACKUP_PATH
declare -g IS_MASTER=false

trap 'cleanup_and_exit 130' SIGINT
trap 'cleanup_and_exit 143' SIGTERM
trap 'handle_error ${LINENO}' ERR

main() {
    local operation="${1:-backup}"
    
    case "${operation}" in
        "backup")
            run_backup
            ;;
        "verify")
            verify_backup
            ;;
        "cleanup")
            cleanup_old_backups
            ;;
        "status")
            check_backup_status
            ;;
        *)
            show_usage
            exit 1
            ;;
    esac
}

run_backup() {
    log_info "Starting PostgreSQL backup process"
    
    check_prerequisites
    acquire_lock
    check_if_master
    create_backup_directories
    perform_backup
    compress_backup
    update_backup_metadata
    cleanup_old_backups
    log_success "Backup completed successfully"
}

check_prerequisites() {
    log_info "Checking prerequisites"
    
    # Check if running as root or postgres
    if [[ "$(id -u)" != "0" ]] && [[ "$(id -un)" != "postgres" ]]; then
        log_error "Must be run as root or postgres user"
        exit 1
    fi
    
    # Check required commands
    local required_commands=("pg_basebackup" "tar" "gzip" "jq" "patronictl")
    for cmd in "${required_commands[@]}"; do
        if ! command -v "${cmd}" >/dev/null 2>&1; then
            log_error "Required command not found: ${cmd}"
            exit 1
        fi
    done
    
    log_success "Prerequisites check passed"
}

acquire_lock() {
    log_info "Acquiring backup lock"
    
    # Create lockfile directory if it doesn't exist
    local lock_dir=$(dirname "${LOCKFILE}")
    if [[ ! -d "${lock_dir}" ]]; then
        mkdir -p "${lock_dir}"
    fi
    
    if [[ -f "${LOCKFILE}" ]]; then
        local lock_pid
        lock_pid=$(<"${LOCKFILE}")
        if kill -0 "${lock_pid}" 2>/dev/null; then
            log_error "Backup already running with PID: ${lock_pid}"
            exit 1
        else
            log_warning "Stale lock file found, removing"
            rm -f "${LOCKFILE}"
        fi
    fi
    
    echo $$ > "${LOCKFILE}"
    log_success "Lock acquired"
}

check_if_master() {
    log_info "Checking cluster role"
    
    local current_node
    local cluster_info
    
    current_node=$(hostname -f)
    
    # Try to get cluster info, but don't fail if patronictl has issues
    cluster_info=$(patronictl -c "${PATRONI_CONFIG}" list -f json 2>/dev/null || {
        log_warning "Could not get cluster info from patronictl, assuming master role"
        IS_MASTER=true
        return 0
    })
    
    if [[ -z "${cluster_info}" ]]; then
        log_warning "Empty cluster info, assuming master role"
        IS_MASTER=true
        return 0
    fi
    
    local master_node
    master_node=$(echo "${cluster_info}" | jq -r '.[] | select(.Role == "Leader") | .Member' 2>/dev/null || true)
    
    if [[ "${current_node}" == "${master_node}" ]]; then
        IS_MASTER=true
        log_success "Current node is master: ${current_node}"
    else
        log_info "Current node is replica, master is: ${master_node:-unknown}"
        log_info "Skipping backup on replica node"
        exit 0
    fi
}

create_backup_directories() {
    log_info "Creating backup directories"
    
    BACKUP_START_TIME=$(date +%Y-%m-%d_%H-%M-%S)
    BACKUP_PATH="${BACKUP_DIR}/${BACKUP_START_TIME}"
    
    # Create main backup directory if it doesn't exist
    if [[ ! -d "${BACKUP_DIR}" ]]; then
        log_warning "Backup directory ${BACKUP_DIR} does not exist, creating it"
        if ! mkdir -p "${BACKUP_DIR}"; then
            log_error "Failed to create backup directory: ${BACKUP_DIR}"
            exit 1
        fi
        
        # Set proper permissions
        if [[ "$(id -u)" == "0" ]]; then
            chown -R postgres:postgres "${BACKUP_DIR}"
            chmod 755 "${BACKUP_DIR}"
        else
            chmod 700 "${BACKUP_DIR}"
        fi
        log_success "Created backup directory: ${BACKUP_DIR}"
    fi
    
    # Create temp directory with fallback
    TEMP_DIR=$(mktemp -d -p "${BACKUP_DIR}" tmp.XXXXXXXXXX 2>/dev/null || {
        log_warning "mktemp failed, using fallback method"
        TEMP_DIR="${BACKUP_DIR}/tmp.$$.${RANDOM}"
        if ! mkdir -p "${TEMP_DIR}"; then
            log_error "Failed to create temp directory: ${TEMP_DIR}"
            exit 1
        fi
        echo "${TEMP_DIR}"
    })
    
    # Create backup directory
    if ! mkdir -p "${BACKUP_PATH}"; then
        log_error "Failed to create backup path: ${BACKUP_PATH}"
        exit 1
    fi
    
    # Set proper permissions
    if [[ "$(id -u)" == "0" ]]; then
        chown -R postgres:postgres "${BACKUP_DIR}"
    else
        chmod 700 "${BACKUP_PATH}" "${TEMP_DIR}"
    fi
    
    log_success "Backup directory created: ${BACKUP_PATH}"
    log_success "Temp directory created: ${TEMP_DIR}"
}

perform_backup() {
    log_info "Starting pg_basebackup"
    
    local backup_cmd=(
        pg_basebackup
        -D "${TEMP_DIR}/backup"
        -h localhost
        -p 5432
        -U replicator
        -v
        -P
        -X stream
        -c fast
    )
    
    # Set password if .pgpass doesn't exist
    if [[ ! -f ~/.pgpass ]]; then
        export PGPASSWORD="securepassword123"  # Use your actual password
    fi
    
    log_info "Executing: ${backup_cmd[*]}"
    
    # Execute with timeout
    if timeout "${BACKUP_TIMEOUT}" "${backup_cmd[@]}"; then
        log_success "pg_basebackup completed successfully"
    else
        local exit_code=$?
        if [[ ${exit_code} -eq 124 ]]; then
            log_error "pg_basebackup timed out after ${BACKUP_TIMEOUT} seconds"
        else
            log_error "pg_basebackup failed with exit code: ${exit_code}"
        fi
        exit 1
    fi
}

compress_backup() {
    log_info "Compressing backup"
    
    local tar_cmd=(
        tar
        -czf "${BACKUP_PATH}/postgres_backup.tar.gz"
        --directory="${TEMP_DIR}"
        backup
    )
    
    if ! "${tar_cmd[@]}"; then
        log_error "Backup compression failed"
        exit 1
    fi
    
    # Calculate checksum
    cd "${BACKUP_PATH}"
    sha256sum postgres_backup.tar.gz > postgres_backup.sha256
    
    local backup_size
    backup_size=$(du -h postgres_backup.tar.gz | cut -f1)
    
    log_success "Backup compressed: ${backup_size}"
}

update_backup_metadata() {
    log_info "Updating backup metadata"
    
    local metadata_file="${BACKUP_PATH}/backup_metadata.txt"
    
    cat > "${metadata_file}" << EOF
Backup Created: $(date)
Cluster Name: postgres-cluster
Node: $(hostname -f)
Role: master
PostgreSQL Version: $(psql -t -c "SELECT version();" | head -1)
Backup Size: $(du -h "${BACKUP_PATH}/postgres_backup.tar.gz" | cut -f1)
Checksum: $(cat "${BACKUP_PATH}/postgres_backup.sha256")
WAL Location: $(psql -t -c "SELECT pg_current_wal_lsn();" | head -1)
EOF

    log_success "Backup metadata updated"
}

cleanup_old_backups() {
    log_info "Cleaning up old backups (retention: ${RETENTION_DAYS} days)"
    
    local backups_deleted=0
    
    # Find and remove old backup directories
    find "${BACKUP_DIR}" -maxdepth 1 -type d -name "202*-*-*_*-*-*" | while read -r backup; do
        local backup_name=$(basename "${backup}")
        local backup_date=$(echo "${backup_name}" | cut -d'_' -f1)
        local backup_age=$(( ($(date +%s) - $(date -d "${backup_date}" +%s)) / 86400 ))
        
        if [[ ${backup_age} -gt ${RETENTION_DAYS} ]]; then
            log_info "Removing old backup: ${backup_name} (${backup_age} days old)"
            rm -rf "${backup}"
            ((backups_deleted++))
        fi
    done
    
    log_success "Cleaned up ${backups_deleted} old backups"
}

verify_backup() {
    log_info "Verifying latest backup"
    
    local latest_backup
    latest_backup=$(find "${BACKUP_DIR}" -name "postgres_backup.tar.gz" -type f -printf '%T@ %p\n' | sort -nr | head -1 | cut -d' ' -f2-)
    
    if [[ -z "${latest_backup}" ]]; then
        log_error "No backups found to verify"
        exit 1
    fi
    
    log_info "Verifying: ${latest_backup}"
    
    # Verify checksum
    local backup_dir
    backup_dir=$(dirname "${latest_backup}")
    cd "${backup_dir}"
    
    if sha256sum -c postgres_backup.sha256; then
        log_success "Backup checksum verification passed"
    else
        log_error "Backup checksum verification failed"
        exit 1
    fi
    
    # Verify tar archive
    if tar -tzf "${latest_backup}" > /dev/null 2>&1; then
        log_success "Backup archive is valid"
    else
        log_error "Backup archive is corrupt"
        exit 1
    fi
}

check_backup_status() {
    local latest_backup
    latest_backup=$(find "${BACKUP_DIR}" -name "postgres_backup.tar.gz" -type f -printf '%T@ %p\n' | sort -nr | head -1 | cut -d' ' -f2-)
    
    if [[ -z "${latest_backup}" ]]; then
        echo "No backups found"
        exit 1
    fi
    
    local backup_time
    local current_time
    local hours_since_backup
    
    backup_time=$(stat -c %Y "${latest_backup}")
    current_time=$(date +%s)
    hours_since_backup=$(( (current_time - backup_time) / 3600 ))
    
    echo "Latest backup: $(basename "$(dirname "${latest_backup}")")"
    echo "Backup file: ${latest_backup}"
    echo "Size: $(du -h "${latest_backup}" | cut -f1)"
    echo "Age: ${hours_since_backup} hours"
    
    if [[ ${hours_since_backup} -gt 24 ]]; then
        log_warning "Backup is older than 24 hours"
        exit 1
    else
        log_success "Backup status: OK"
    fi
}

cleanup_and_exit() {
    local exit_code=${1:-0}
    
    log_info "Cleaning up..."
    
    # Remove temporary directory
    if [[ -n "${TEMP_DIR}" && -d "${TEMP_DIR}" ]]; then
        rm -rf "${TEMP_DIR}"
        log_debug "Removed temporary directory: ${TEMP_DIR}"
    fi
    
    # Remove lock file
    if [[ -f "${LOCKFILE}" ]]; then
        rm -f "${LOCKFILE}"
        log_debug "Removed lock file: ${LOCKFILE}"
    fi
    
    log_info "Cleanup completed"
    exit ${exit_code}
}

handle_error() {
    local line_number=$1
    log_error "Error occurred in ${SCRIPT_NAME} at line ${line_number}"
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
Usage: ${SCRIPT_NAME} <command>

Commands:
  backup    Perform a new backup
  verify    Verify the latest backup
  cleanup   Clean up old backups
  status    Check backup status
EOF
}

# Make sure we cleanup on exit
trap cleanup_and_exit EXIT

# Run main function with all arguments
main "$@"