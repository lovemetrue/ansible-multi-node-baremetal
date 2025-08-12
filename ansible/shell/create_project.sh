#!/bin/bash
set -euo pipefail

# Создаем основную структуру каталогов
create_structure() {
  # Основные каталоги
  mkdir -p ansible/{family_vars,group_vars,host_vars,library,playbooks,roles/kubernetes}
  mkdir -p infrastructure
  mkdir -p setup

  # Создаем базовые файлы
  touch ansible/ansible.cfg
  touch ansible/family_vars/ubuntu.yml
  touch ansible/inventory.ini
  touch ansible/requirements.yml
  touch LICENSE
  touch README.md
  touch setup/cloud-config.yml
  touch setup/README.md

  # Добавляем базовое содержимое в README.md
  cat > README.md << 'EOF'
# Project Structure

This project contains infrastructure and configuration management code.

## Directories

- `ansible/`: Ansible configuration and playbooks
- `infrastructure/`: Terraform or other IaC code
- `setup/`: Initial setup and cloud configuration
EOF

  # Добавляем базовый ansible.cfg
  cat > ansible/ansible.cfg << 'EOF'
[defaults]
inventory = ./inventory.ini
roles_path = ./roles
library = ./library
retry_files_enabled = False
EOF

  # Добавляем базовый inventory.ini
  cat > ansible/inventory.ini << 'EOF'
[all:vars]
ansible_python_interpreter=/usr/bin/python3

[control]
# control-node ansible_host=192.168.1.10

[nodes]
# node-1 ansible_host=192.168.1.11
# node-2 ansible_host=192.168.1.12
EOF

  # Добавляем базовый cloud-config.yml
  cat > setup/cloud-config.yml << 'EOF'
#cloud-config
users:
  - name: admin
    ssh-authorized-keys:
      - ssh-rsa AAAAB3NzaC1yc2E... user@example.com
    sudo: ['ALL=(ALL) NOPASSWD:ALL']
    groups: sudo
    shell: /bin/bash
EOF
}

# Проверяем, не существует ли уже структура
check_existing() {
  if [[ -d "ansible" || -d "infrastructure" || -d "setup" ]]; then
    echo "Error: Project directories already exist in current location."
    exit 1
  fi
}

main() {
  echo "Creating project structure..."
  check_existing
  create_structure
  echo "Project structure created successfully."
  echo
  tree -a
}

main
