#!/bin/bash
set -euo pipefail

# Конфигурация
USERNAME="ophelma"
PASSWORD="5A7-g?RD"
LOG_FILE="ssh_connection.log"
TIMEOUT=5  # Таймаут подключения в секундах

# Список хостов
HOSTS=(
  10.130.3.75
  10.130.3.76
  10.130.3.73
  10.130.3.72
  10.130.3.79
  10.130.3.66
  10.130.3.67
  10.130.3.68
  10.130.3.98
  10.130.3.99
  10.130.3.114
  10.129.1.85
)

# Функция для проверки подключения
check_ssh_connection() {
  local host=$1
  echo "[$(date '+%Y-%m-%d %H:%M:%S')] Проверяем хост: $host" | tee -a "$LOG_FILE"
  
  if ! sshpass -p "$PASSWORD" ssh -o StrictHostKeyChecking=no \
                                  -o UserKnownHostsFile=/dev/null \
                                  -o ConnectTimeout=$TIMEOUT \
                                  -o LogLevel=ERROR \
                                  "$USERNAME@$host" "echo 'Успешное подключение'" 2>> "$LOG_FILE"; then
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] Ошибка подключения к $host" | tee -a "$LOG_FILE"
    return 1
  fi
  return 0
}

# Основной цикл
echo "Начало проверки хостов в $(date '+%Y-%m-%d %H:%M:%S')" > "$LOG_FILE"

for host in "${HOSTS[@]}"; do
  if check_ssh_connection "$host"; then
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] $host - OK" | tee -a "$LOG_FILE"
  fi
done

echo "Проверка завершена. Лог сохранен в $LOG_FILE"
