# Project Structure

This project contains infrastructure and configuration management code for bare metal deploy and prereq setups.

```
├── ansible
│   ├── ansible.cfg
│   ├── family_vars
│   │   └── ubuntu.yml
│   ├── group_vars
│   │   └── all.yml
│   ├── inventory.ini
│   ├── library
│   ├── playbooks
│   │   ├── apply-tuning.yml
│   │   ├── cilium-deploy.yml
│   │   ├── deploy-rancher.yml
│   │   ├── ingress-deploy.yml
│   │   ├── install-helm.yml
│   │   ├── install-python-requirements.yml
│   │   ├── setup-hosts.yml
│   │   ├── setup-k8s-nodes.yml
│   │   └── tuned-sysctl.sh
│   ├── requirements.yml
│   ├── roles
│   │   ├── cilium
│   │   │   └── tasks
│   │   │       └── main.yml
│   │   ├── hosts-setup
│   │   │   └── tasks
│   │   │       ├── main.yml
│   │   │       └── updated-etc-hosts.yml
│   │   ├── ingress-nginx
│   │   │   ├── files
│   │   │   │   └── ingress-values.yml
│   │   │   └── tasks
│   │   │       └── main.yml
│   │   ├── kubernetes
│   │   └── storage-class
│   │       └── tasks
│   │           └── main.yml
│   ├── shell
│   │   ├── cleanup_node.sh
│   │   ├── create_project.sh
│   │   ├── create_vault_vars.sh
│   │   ├── csv_parser.sh
│   │   ├── generate_ssl_lets_encrypt.sh
│   │   ├── scale-down-all-nodes-pods.sh
│   │   └── ssh_checker.sh
│   ├── site.yml
│   └── ssh_connection.log
```# ansible-multi-node-baremetal
