#!/bin/bash
set -euo pipefail

# Функция для проверки выполнения команд
check_command() {
    if ! "$@"; then
        echo "Ошибка выполнения команды: $*"
        exit 1
    fi
}

# 0. Отключение swap
echo "Отключаем swap..."
swapoff -a
sed -i '/ swap / s/^\(.*\)$/#\1/g' /etc/fstab
echo "Swap отключен."

# 1. Настройка модулей ядра и сетевых параметров
echo "Настраиваем модули ядра и сетевые параметры..."
cat <<EOF | tee /etc/modules-load.d/k8s.conf >/dev/null
overlay
br_netfilter
EOF

modprobe overlay || echo "Не удалось загрузить модуль overlay"
modprobe br_netfilter || echo "Не удалось загрузить модуль br_netfilter"

cat <<EOF | tee /etc/sysctl.d/k8s.conf >/dev/null
net.bridge.bridge-nf-call-iptables  = 1
net.bridge.bridge-nf-call-ip6tables = 1
net.ipv4.ip_forward                 = 1
EOF

sysctl --system >/dev/null

# Проверка загруженных модулей
echo "Проверяем загруженные модули:"
lsmod | grep -E 'br_netfilter|overlay' || echo "Модули не загружены"

# Проверка сетевых параметров
echo "Проверяем сетевые параметры:"
sysctl net.bridge.bridge-nf-call-iptables net.bridge.bridge-nf-call-ip6tables net.ipv4.ip_forward



# 3. Установка runc
echo "Устанавливаем runc..."
RUNC_VERSION="v1.1.12"
curl -sLO "https://github.com/opencontainers/runc/releases/download/${RUNC_VERSION}/runc.amd64"
install -m 755 runc.amd64 /usr/local/sbin/runc
rm -f runc.amd64

# 4. Установка CNI плагинов
echo "Устанавливаем CNI плагины..."
CNI_VERSION="v1.5.0"
mkdir -p /opt/cni/bin
curl -sLO "https://github.com/containernetworking/plugins/releases/download/${CNI_VERSION}/cni-plugins-linux-amd64-${CNI_VERSION}.tgz"
tar -xzf "cni-plugins-linux-amd64-${CNI_VERSION}.tgz" -C /opt/cni/bin
rm -f "cni-plugins-linux-amd64-${CNI_VERSION}.tgz"


apt-get update -qq
apt-get install -y -qq kubelet kubeadm kubectl >/dev/null
apt-mark hold kubelet kubeadm kubectl
systemctl enable --now kubelet >/dev/null

# 2. Установка и настройка containerd
echo "Устанавливаем и настраиваем containerd..."
apt-get update -qq
apt-get install -y -qq containerd >/dev/null

mkdir -p /etc/containerd
containerd config default | tee /etc/containerd/config.toml >/dev/null

if grep -q 'SystemdCgroup = false' /etc/containerd/config.toml; then
    sed -i 's/SystemdCgroup = false/SystemdCgroup = true/' /etc/containerd/config.toml
    echo "Изменено: SystemdCgroup = true"
else
    echo "Параметр SystemdCgroup не найден или уже установлен в true"
fi

systemctl daemon-reload
systemctl enable --now containerd >/dev/null
chmod -R 777 /var/run/containerd/


# Проверка версий
echo "Установленные версии:"
kubeadm version
kubectl version --client --short
kubelet --version

echo "Настройка ноды завершена успешно!"
