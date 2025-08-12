#!/bin/bash  
  
CONNTRACK_MAX_PER_CORE=131072  
CONNTRACK_MIN=524288  
  
CPU_NUM=`cat /proc/cpuinfo | grep -E '^processor\s+:\s+[0-9]+$' | wc -l`  
CONNTRACK_BY_CPU=$(( $CPU_NUM * $CONNTRACK_MAX_PER_CORE ))  
NF_CONNTRACK_MAX=$(( $CONNTRACK_BY_CPU > $CONNTRACK_MIN ? $CONNTRACK_BY_CPU : $CONNTRACK_MIN ))  
MEM_NUM=`awk '/^MemTotal:/{print $2}' /proc/meminfo`  
  
sysctl -w net.netfilter.nf_conntrack_max=$NF_CONNTRACK_MAX # установить ограничение на количество conntrack  
sysctl -w net.nf_conntrack_max=$NF_CONNTRACK_MAX  
echo $(( $NF_CONNTRACK_MAX / 4 )) > /sys/module/nf_conntrack/parameters/hashsize # установить пропорциональный размер хеш-таблицы для поиска по contact  
  
sysctl -w vm.swappiness=0  # общая оптимизация с этой строки и ниже
sysctl -w net.core.somaxconn=1000  
sysctl -w net.core.netdev_max_backlog=5000  
sysctl -w net.core.rmem_max=$MEM_NUM  
sysctl -w net.core.wmem_max=$MEM_NUM  
sysctl -w net.ipv4.tcp_wmem="4096 87380 $MEM_NUM"  
sysctl -w net.ipv4.tcp_rmem="4096 87380 $MEM_NUM"  
sysctl -w net.ipv4.tcp_max_syn_backlog=8096  
sysctl -w net.ipv4.tcp_no_metrics_save=1  
sysctl -w net.ipv4.tcp_slow_start_after_idle=0  
sysctl -w net.ipv4.tcp_tw_reuse=1  
sysctl -w net.ipv4.ip_local_port_range="2000 65535"  
sysctl -w net.ipv4.neigh.default.gc_thresh1=16384  
sysctl -w net.ipv4.neigh.default.gc_thresh2=28672  
sysctl -w net.ipv4.neigh.default.gc_thresh3=32768  
sysctl -w net.bridge.bridge-nf-call-iptables=1 # этот параметр необходим для работы kube-proxy  
sysctl -w net.bridge.bridge-nf-call-arptables=1 # этот параметр необходим для работы kube-proxy  
sysctl -w net.bridge.bridge-nf-call-ip6tables=1 # этот параметр необходим для работы kube-proxy  
sysctl -w vm.dirty_ratio=80  
sysctl -w vm.dirty_background_ratio=5  
sysctl -w vm.dirty_expire_centisecs=12000  
sysctl -w fs.file-max=1000000  
sysctl -w vm.min_free_kbytes=131072  
sysctl -w kernel.numa_balancing=0  
sysctl -w fs.inotify.max_user_watches=524288  
sysctl -w fs.inotify.max_user_instances=5120  
sysctl -w kernel.pid_max=2000000  
sysctl -w vm.overcommit_memory=1  # параметры кубелет
sysctl -w kernel.panic=10  # параметры кубелет
sysctl -w kernel.panic_on_oops=1  # параметры кубелет
  
echo -e "* hard nofile 4194304\n* soft nofile 4194304" >> /etc/security/limits.conf