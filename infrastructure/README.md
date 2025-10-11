# Kubernetes Infrastructure Components

Данный каталог содержит конфигурации и манифесты для развертывания инфраструктурных компонентов Kubernetes кластера на bare metal серверах.

## 📋 Содержание

- [Обзор архитектуры](#обзор-архитектуры)
- [Компоненты кластера](#компоненты-кластера)
  - [Сетевые компоненты (CNI)](#сетевые-компоненты-cni)
  - [Ingress контроллеры](#ingress-контроллеры)
  - [Системы хранения](#системы-хранения)
  - [Мониторинг и наблюдаемость](#мониторинг-и-наблюдаемость)
  - [DNS и сервис-дискавери](#dns-и-сервис-дискавери)
  - [CI/CD и GitOps](#cicd-и-gitops)
  - [Базы данных](#базы-данных)
  - [Системные настройки](#системные-настройки)
- [Порядок развертывания](#порядок-развертывания)
- [Мониторинг и обслуживание](#мониторинг-и-обслуживание)

## 🏗️ Обзор архитектуры

Инфраструктура построена на основе высокодоступного Kubernetes кластера с использованием следующих принципов:

- **Bare Metal развертывание** - прямое развертывание на физических серверах
- **Высокая доступность** - отказоустойчивость на уровне узлов и компонентов
- **Масштабируемость** - возможность горизонтального масштабирования
- **Безопасность** - изоляция сетевого трафика и контроль доступа
- **Мониторинг** - полная наблюдаемость всех компонентов

## 🔧 Компоненты кластера

### 🌐 Сетевые компоненты (CNI)

#### Calico
**Расположение:** `calico/`
**Назначение:** Сетевой плагин для обеспечения сетевой связности между подами

**Ключевые файлы:**
- `tigera-operator.yaml` - оператор для управления Calico
- `custom-resources.yaml` - кастомные ресурсы для настройки сети

**Особенности:**
- Политики сетевой безопасности
- Поддержка BGP маршрутизации
- Интеграция с Kubernetes Network Policies

#### Cilium
**Расположение:** `cilium/`
**Назначение:** Альтернативный CNI с расширенными возможностями безопасности

**Ключевые файлы:**
- `cilium-values.yaml` - конфигурация Helm chart
- `cilium-d8.yaml` - конфигурация для D8
- `local-redirect-policy.yaml` - политики локального перенаправления

**Особенности:**
- eBPF-based сетевая безопасность
- Hubble для мониторинга сетевого трафика
- Поддержка Service Mesh
- Замена kube-proxy

**Конфигурация:**
```yaml
cni:
  exclusive: true
enableHostFirewall: true
hubble:
  enabled: true
  relay:
    enabled: true
  ui:
    enabled: true
kubeProxyReplacement: true
routingMode: tunnel
tunnelProtocol: vxlan
```

### 🚪 Ingress контроллеры

#### Ingress Nginx (Основной)
**Расположение:** `ingress-nginx/`
**Назначение:** Основной ingress контроллер для маршрутизации HTTP/HTTPS трафика

**Ключевые файлы:**
- `ingress-values.yaml` - конфигурация Helm chart
- `cluster-setup.sh` - скрипт настройки кластера
- `vps-nginx.conf` - дополнительная конфигурация Nginx

**Особенности:**
- DaemonSet развертывание
- Поддержка аннотаций snippet
- Интеграция с приватным registry
- Метрики для мониторинга

**Конфигурация:**
```yaml
ingress-nginx:
  controller:
    allowSnippetAnnotations: true
    kind: DaemonSet
    hostNetwork: true
    metrics:
      enabled: true
```

#### Elma Ingress Nginx
**Расположение:** `elma-ingress-nginx/`
**Назначение:** Специализированный ingress контроллер для приложений Elma365

**Особенности:**
- Кастомная конфигурация для Elma365
- Интеграция с внутренними сервисами
- Оптимизация для высоконагруженных приложений

### 💾 Системы хранения

#### Longhorn
**Расположение:** `longhorn/`
**Назначение:** Распределенная система хранения для Kubernetes

**Ключевые файлы:**
- `helm-set.yaml` - команды Helm для настройки
- `default-sc.yaml` - StorageClass по умолчанию
- `test-pvc.yaml` - тестовые PersistentVolumeClaim
- `ui-deployment-default.yaml` - UI для управления

**Особенности:**
- Распределенное хранение
- Snapshot и backup
- Web UI для управления
- Высокая доступность данных

**Настройки:**
```bash
helm upgrade longhorn longhorn/longhorn -n longhorn-system \
  --set ui.replicas=1 \
  --set ui.affinity.podAntiAffinity.requiredDuringSchedulingIgnoredDuringExecution[0].labelSelector.matchExpressions[0].key="app"
```

#### Local Path Storage
**Расположение:** `local-path-storage/`
**Назначение:** Локальное хранение для тестирования и разработки

**Ключевые файлы:**
- `local-path-storage-default.yaml` - базовая конфигурация
- `full-yamls.yaml` - полная конфигурация

**Особенности:**
- Простое локальное хранение
- Подходит для разработки
- Минимальные требования к ресурсам

### 📊 Мониторинг и наблюдаемость

#### Metrics Server
**Расположение:** `metrics-server/`
**Назначение:** Сбор метрик ресурсов узлов и подов

**Ключевые файлы:**
- `matrics-all-configs.yaml` - полная конфигурация
- `metrics-default-depl.yaml` - базовое развертывание
- `3-replicas-metrics-depl.yaml` - конфигурация с 3 репликами

**Особенности:**
- Сбор CPU и памяти
- Поддержка HPA (Horizontal Pod Autoscaler)
- Интеграция с kubectl top
- Безопасная аутентификация

**Конфигурация:**
```yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: metrics-server
  namespace: kube-system
spec:
  template:
    spec:
      containers:
      - name: metrics-server
        image: registry.k8s.io/metrics-server/metrics-server:v0.8.0
        args:
        - --cert-dir=/tmp
        - --secure-port=10250
        - --kubelet-preferred-address-types=InternalIP,ExternalIP,Hostname
        - --kubelet-insecure-tls
        - --metric-resolution=15s
```

#### Hubble (Cilium)
**Расположение:** `hubble/`
**Назначение:** Мониторинг сетевого трафика и безопасности

**Ключевые файлы:**
- `hubble-ui-defaul-depl.yaml` - UI для визуализации
- `hubble-relay-default-depl.yaml` - релей для сбора данных
- `hubble-default-svc.yaml` - сервис для доступа

**Особенности:**
- Визуализация сетевого трафика
- Мониторинг политик безопасности
- Интеграция с Cilium
- Web UI для анализа

### 🌐 DNS и сервис-дискавери

#### CoreDNS
**Расположение:** `core-dns/`
**Назначение:** DNS сервер для разрешения имен в кластере

**Ключевые файлы:**
- `node-local-dns.yaml` - локальный DNS кэш на узлах
- `3-repllicas-each-node-deployment.yaml` - развертывание с 3 репликами
- `nodelocaldns.yaml` - конфигурация NodeLocal DNS

**Особенности:**
- Локальное кэширование DNS запросов
- Улучшение производительности
- Снижение нагрузки на CoreDNS
- Поддержка Prometheus метрик

**Конфигурация NodeLocal DNS:**
```yaml
apiVersion: apps/v1
kind: DaemonSet
metadata:
  name: node-local-dns
  namespace: kube-system
spec:
  template:
    spec:
      containers:
      - name: node-cache
        image: registry.k8s.io/dns/k8s-dns-node-cache:1.15.16
        args: [ "-localip", "10.96.0.10", "-conf", "/etc/Corefile", "-upstreamsvc", "kube-dns-upstream" ]
```

### 🚀 CI/CD и GitOps

#### ArgoCD HA Multinode
**Расположение:** `argo-ha-multinode/`
**Назначение:** Высокодоступный GitOps инструмент для непрерывного развертывания

**Ключевые файлы:**
- `install.yaml` - установка ArgoCD
- `ingress-argo-ui.yaml` - ingress для UI

**Особенности:**
- Высокая доступность
- Мульти-узловая архитектура
- GitOps подход
- Web UI для управления

### 🗄️ Базы данных

#### PostgreSQL Cluster
**Расположение:** `postgres/`
**Назначение:** Высокодоступный кластер PostgreSQL с Patroni

**Структура:**
- `patroni/` - конфигурации Patroni для каждого узла
- `haproxy/` - балансировщик нагрузки
- `pgBouncer/` - пул соединений
- `etcd/` - настройки etcd для координации

**Ключевые файлы:**
- `patroni-srv-1.yaml` - конфигурация первого узла
- `haproxy.cfg` - конфигурация HAProxy
- `pgbouncer.ini` - настройки пула соединений

**Особенности:**
- Автоматический failover
- Синхронная репликация
- Мониторинг состояния
- Backup и восстановление

**Конфигурация Patroni:**
```yaml
scope: postgres-cluster
name: k8s-postgres.elewise.local
restapi:
  listen: k8s-postgres.elewise.local:8008
  connect_address: k8s-postgres.elewise.local:8008
etcd:
  hosts: k8s-postgres.elewise.local:2379,k8s-postgres-s1.elewise.local:2379,k8s-postgres-m2.elewise.local:2379
bootstrap:
  method: initdb
  dcs:
    ttl: 30
    loop_wait: 10
    retry_timeout: 10
```

### ⚙️ Системные настройки

#### Kubelet Configuration
**Расположение:** `kubelet/`
**Назначение:** Настройки kubelet для оптимизации производительности

**Ключевые файлы:**
- `kubelet-values.yaml` - конфигурация kubelet

**Особенности:**
- Настройка cgroup driver
- Оптимизация DNS
- Настройка аутентификации
- Конфигурация логирования

#### Kube-proxy
**Расположение:** `kube-proxy/`
**Назначение:** Сетевой прокси для сервисов Kubernetes

**Ключевые файлы:**
- `kube-proxy-daemon.yaml` - DaemonSet для kube-proxy

#### Sysctl Configuration
**Расположение:** `sysctl/`
**Назначение:** Оптимизация системных параметров ядра

**Ключевые файлы:**
- `good_sysctl.conf` - рекомендуемые настройки
- `bad_sysctl.conf` - проблемные настройки (для справки)

**Основные настройки:**
```bash
# Сетевые настройки
net.core.rmem_max = 134217728
net.core.wmem_max = 134217728
net.ipv4.tcp_rmem = 4096 65536 134217728
net.ipv4.tcp_wmem = 4096 65536 134217728

# Настройки для Kubernetes
net.bridge.bridge-nf-call-iptables = 1
net.bridge.bridge-nf-call-ip6tables = 1
vm.swappiness = 0
```

## 🚀 Порядок развертывания

### 1. Подготовка системы
```bash
# Применение sysctl настроек
sudo cp sysctl/good_sysctl.conf /etc/sysctl.d/99-kubernetes.conf
sudo sysctl --system
```

### 2. Установка CNI
```bash
# Calico
kubectl apply -f calico/tigera-operator.yaml
kubectl apply -f calico/custom-resources.yaml

# Или Cilium
helm install cilium cilium/cilium -f cilium/cilium-values.yaml
```

### 3. Установка Ingress
```bash
# Основной Ingress Nginx
helm install ingress-nginx ingress-nginx/ingress-nginx -f ingress-nginx/ingress-values.yaml

# Elma Ingress (если требуется)
helm install elma-ingress ./elma-ingress-nginx/ingress-nginx -f elma-ingress-nginx/ingress-nginx/values.yaml
```

### 4. Настройка хранения
```bash
# Longhorn
helm install longhorn longhorn/longhorn -n longhorn-system --create-namespace

# Local Path Storage (для тестирования)
kubectl apply -f local-path-storage/local-path-storage-default.yaml
```

### 5. Установка мониторинга
```bash
# Metrics Server
kubectl apply -f metrics-server/matrics-all-configs.yaml

# NodeLocal DNS
kubectl apply -f core-dns/node-local-dns.yaml
```

### 6. Развертывание ArgoCD
```bash
kubectl apply -f argo-ha-multinode/install.yaml
kubectl apply -f argo-ha-multinode/ingress-argo-ui.yaml
```

### 7. Настройка PostgreSQL кластера
```bash
# Установка Patroni на каждом узле
# Настройка HAProxy
# Конфигурация pgBouncer
```

## 📈 Мониторинг и обслуживание

### Проверка состояния компонентов
```bash
# Проверка подов
kubectl get pods -A

# Проверка сервисов
kubectl get svc -A

# Проверка StorageClass
kubectl get storageclass

# Проверка метрик
kubectl top nodes
kubectl top pods -A
```

### Мониторинг сетевого трафика (Hubble)
```bash
# Доступ к Hubble UI
kubectl port-forward -n kube-system svc/hubble-ui 12000:80

# Просмотр потоков
hubble observe
```

### Управление Longhorn
```bash
# Доступ к UI
kubectl port-forward -n longhorn-system svc/longhorn-frontend 8080:80
```

### Мониторинг PostgreSQL
```bash
# Проверка статуса кластера
patronictl -c /etc/patroni/patroni.yml list

# Проверка репликации
psql -h localhost -U postgres -c "SELECT * FROM pg_stat_replication;"
```

## 🔧 Устранение неполадок

### Общие команды диагностики
```bash
# Логи компонентов
kubectl logs -n kube-system deployment/cilium-operator
kubectl logs -n kube-system daemonset/cilium
kubectl logs -n ingress-nginx deployment/ingress-nginx-controller

# Описание ресурсов
kubectl describe pod -n kube-system <pod-name>
kubectl describe node <node-name>

# События кластера
kubectl get events --sort-by=.metadata.creationTimestamp
```

### Диагностика сети
```bash
# Проверка сетевых политик
kubectl get networkpolicies -A

# Тестирование связности
kubectl run test-pod --image=busybox --rm -it -- /bin/sh
```

### Диагностика хранения
```bash
# Проверка PVC
kubectl get pvc -A
kubectl describe pvc <pvc-name>

# Проверка PV
kubectl get pv
kubectl describe pv <pv-name>
```

## 📚 Дополнительные ресурсы

- [Kubernetes Documentation](https://kubernetes.io/docs/)
- [Cilium Documentation](https://docs.cilium.io/)
- [Longhorn Documentation](https://longhorn.io/docs/)
- [ArgoCD Documentation](https://argo-cd.readthedocs.io/)
- [Patroni Documentation](https://patroni.readthedocs.io/)

## 🤝 Поддержка

При возникновении проблем:
1. Проверьте логи компонентов
2. Убедитесь в корректности конфигурации
3. Проверьте системные требования
4. Обратитесь к документации компонентов

---

**Версия документации:** 1.0  
**Дата обновления:** 2025.10.01
**Автор:** DevOps Team
