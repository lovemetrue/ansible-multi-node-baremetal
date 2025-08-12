#!/bin/bash

# Проверяем, выполняется ли скрипт от root
if [ "$(id -u)" -ne 0 ]; then
  echo "Ошибка: скрипт должен запускаться от root (используйте sudo)" >&2
  exit 1
fi

# Функция для принудительного удаления директорий
force_remove_dir() {
  local dir="$1"
  if [ -d "$dir" ]; then
    echo "Принудительное удаление директории: $dir"
    rm -rf "$dir"
  fi
}

# Удаление Kubernetes-компонентов
echo "Удаление kubectl, kubeadm и kubelet..."
apt-get purge -y kubectl kubeadm kubelet kubernetes-cni
apt-mark unhold kubectl kubeadm kubelet

# Принудительное удаление директорий, которые dpkg не смог удалить
force_remove_dir "/etc/kubernetes"
force_remove_dir "/var/lib/kubelet"
force_remove_dir "~/.kube"

# Удаление container runtime (containerd и Docker)
echo "Удаление container runtime..."
apt-get purge -y containerd docker.io docker-ce docker-ce-cli
force_remove_dir "/var/lib/containerd"
force_remove_dir "/var/lib/docker"
force_remove_dir "/etc/docker"
force_remove_dir "/etc/containerd"
apt-get purge -y docker-engine docker docker.io docker-ce docker-ce-cli docker-compose-plugin
apt-get autoremove -y --purge docker-engine docker docker.io docker-ce docker-compose-plugin

force_remove_dir "/var/lib/docker"
force_remove_dir "/etc/docker"
rm -f /etc/apparmor.d/docker
groupdel docker 2>/dev/null
rm -f /var/run/docker.sock
force_remove_dir "/var/lib/containerd"
force_remove_dir "~/.docker"

# Удаление сетевых компонентов CNI
echo "Удаление сетевых плагинов..."
force_remove_dir "/etc/cni/net.d"
force_remove_dir "/opt/cni/bin"
force_remove_dir "/var/lib/cni"

# Удаление Flannel
echo "Удаление kube-flannel..."
systemctl stop kube-flannel 2>/dev/null
systemctl disable kube-flannel 2>/dev/null
force_remove_dir "/etc/kube-flannel"
force_remove_dir "/var/lib/kube-flannel"
apt-get purge -y kube-flannel 2>/dev/null

# Удаление Cilium
echo "Удаление Cilium..."
cilium uninstall 2>/dev/null || true
systemctl stop cilium 2>/dev/null
systemctl disable cilium 2>/dev/null
force_remove_dir "/etc/cilium"
force_remove_dir "/var/lib/cilium"
apt-get purge -y cilium 2>/dev/null

echo "Stopping IPv4 firewall and allowing everyone..."
ipt="/sbin/iptables"
## Failsafe - die if /sbin/iptables not found
[ ! -x "$ipt" ] && { echo "$0: \"${ipt}\" command not found."; exit 1; }
$ipt -P INPUT ACCEPT
$ipt -P FORWARD ACCEPT
$ipt -P OUTPUT ACCEPT
$ipt -F
$ipt -X
$ipt -t nat -F
$ipt -t nat -X
$ipt -t mangle -F
$ipt -t mangle -X
$ipt -t raw -F
$ipt -t raw -X
# Очистка зависимостей
echo "Очистка ненужных пакетов..."
apt-get autoremove -y --purge
apt-get autoclean

# Дополнительная очистка
echo "Дополнительная очистка системных директорий..."
force_remove_dir "/var/lib/etcd"
force_remove_dir "/var/lib/calico"
force_remove_dir "/var/lib/weave"
force_remove_dir "/var/lib/rancher"
force_remove_dir "/var/lib/kube-proxy"
force_remove_dir "/var/lib/cloud-provider"


# Очистка очистка + удаление сетевых интерфейсов
kubeadm reset
systemctl stop kubelet containerd
rm -rf /var/lib/cni/
rm -rf /var/lib/kubelet/*
rm -rf /etc/cni/
ifconfig cni0 down
ifconfig flannel.1 down
ifconfig docker0 down
ip link delete cni0
ip link delete flannel.1
systemctl start kubelet containerd
# Проверка, что ничего не осталось
echo -e "\nПроверка оставшихся компонентов..."

check_package() {
  if dpkg -l | grep -q "$1"; then
    echo "⚠️  Найден установленный пакет: $1"
    return 1
  else
    echo "✅ Пакет $1 не установлен"
    return 0
  fi
}

check_process() {
  if pgrep -x "$1" >/dev/null; then
    echo "⚠️  Обнаружен работающий процесс: $1"
    return 1
  else
    echo "✅ Процесс $1 не запущен"
    return 0
  fi
}

check_dir() {
  if [ -d "$1" ]; then
    echo "⚠️  Обнаружена директория: $1"
    return 1
  else
    echo "✅ Директория $1 не существует"
    return 0
  fi
}

# Проверяем основные пакеты
check_package "kubectl"
check_package "kubeadm"
check_package "kubelet"
check_package "containerd"
check_package "docker"
check_package "kube-flannel"
check_package "cni"
check_package "cilium"
apt purge kubectl -y
apt purge kubeadm -y
apt purge kubelet -y
apt purge containerd -y
apt purge docker -y
apt purge cni -y
# Проверяем процессы
check_process "containerd"
check_process "dockerd"
check_process "kubelet"
check_process "flanneld"
check_process "cilium-agent"

# Проверяем ключевые директории
check_dir "/etc/kubernetes"
check_dir "/var/lib/kubelet"
check_dir "/etc/cni"
check_dir "/opt/cni"
check_dir "/var/lib/cni"
check_dir "/etc/kube-flannel"
check_dir "/etc/cilium"
check_dir "/var/lib/etcd"
check_dir "/var/lib/calico"

echo -e "\nОчистка завершена. Узел готов к переустановке или другим операциям."
echo -e "\nСистема будет перезагружена"
reboot
