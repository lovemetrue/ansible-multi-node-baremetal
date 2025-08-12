#!/bin/bash
set -euo pipefail

# Проверка зависимостей
check_dependencies() {
    if ! command -v ansible-vault >/dev/null 2>&1; then
        echo "❌ Ошибка: ansible-vault не установлен!"
        echo "Установите его командой: pip install ansible"
        exit 1
    fi
}

# Настройки
VAULT_PASS_FILE=".vault_pass.txt"
VAULT_ID="main_vault"
HOST_VARS_DIR="host_vars"

# Данные для генерации (используем индексированные массивы для совместимости)
HOSTS=(
    "k8s-master-n1.sale.elewise.com:vrstrel:sup365"
    "k8s-worker-n1.sale.elewise.com:sunofthetruth:lazypeon"
    "k8s-worker-n2.sale.elewise.com:haproxy:lazypeon"
)

# Функция создания файла пароля
create_vault_password() {
    if [ ! -f "$VAULT_PASS_FILE" ]; then
        read -s -p "🔒 Введите пароль для ansible-vault: " password
        echo
        echo "$password" > "$VAULT_PASS_FILE"
        chmod 600 "$VAULT_PASS_FILE"
        echo "✔ Файл с паролем создан: $VAULT_PASS_FILE"
    fi
}

# Функция шифрования файла
encrypt_file() {
    local file="$1"
    echo "🔐 Шифруем файл: $file"
    
    if ansible-vault encrypt "$file" --vault-password-file="$VAULT_PASS_FILE"; then
        echo "✔ Успешно зашифрован: $file"
    else
        echo "❌ Ошибка при шифровании $file!"
        echo "Попробуйте команду вручную:"
        echo "ansible-vault encrypt '$file' --vault-password-file='$VAULT_PASS_FILE'"
        exit 1
    fi
}

# Основной процесс
main() {
    check_dependencies
    create_vault_password
    mkdir -p "$HOST_VARS_DIR"
    
    for host_data in "${HOSTS[@]}"; do
        IFS=':' read -r host user pass <<< "$host_data"
        file="$HOST_VARS_DIR/$host.yml"
        
        echo "📝 Создаем файл: $file"
        cat > "$file" <<-EOF
ansible_user: $user
ansible_ssh_pass: $pass
ansible_connection: ssh
EOF
        
        encrypt_file "$file"
    done
    
    echo -e "\n✅ Все файлы успешно созданы и зашифрованы!"
    echo -e "\nДля редактирования используйте:"
    echo "ansible-vault edit host_vars/имя_хоста.yml --vault-password-file=$VAULT_PASS_FILE"
}

main