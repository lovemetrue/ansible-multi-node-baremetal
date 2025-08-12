USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root         488 75.0  0.0 1237564 15412 ?       Ssl  14:25   0:00 cilium-bugtool --archiveType=gz --exclude-object-files
root         508  0.0  0.0   7888  4048 ?        R    14:25   0:00  \_ ps auxfw
root         515  0.0  0.0   1452     4 ?        R    14:25   0:00  \_ ip -6 r
root         520  0.0  0.0   4324  1552 ?        R    14:25   0:00  \_ bash -c ip -4 n
root         521  0.0  0.0   5284   820 ?        R    14:25   0:00  \_ ss -t -p -a -i -s -n -e
root         523  0.0  0.0   5264   816 ?        R    14:25   0:00  \_ ss -u -p -a -i -s -n -e
root         525  0.0  0.0    920     4 ?        R    14:25   0:00  \_ top -b -n 1
root         526  0.0  0.0   4324  1420 ?        R    14:25   0:00  \_ bash -c uptime
root         527  0.0  0.0      4     4 ?        R    14:25   0:00  \_ [bash]
root           1  7.4  1.1 1429620 181076 ?      Ssl  14:22   0:13 cilium-agent --config-dir=/tmp/cilium/config-map
root         235  0.0  0.0 1230132 4516 ?        Sl   14:22   0:00 cilium-health-responder --listen 4240 --pidfile /var/run/cilium/state/health-endpoint.pid
