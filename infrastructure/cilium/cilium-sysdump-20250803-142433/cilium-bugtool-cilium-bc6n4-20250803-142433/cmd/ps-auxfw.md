USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root         511 50.0  0.1 1237628 14836 ?       Ssl  14:25   0:00 cilium-bugtool --archiveType=gz --exclude-object-files
root         532  0.0  0.0   7888  3960 ?        R    14:25   0:00  \_ ps auxfw
root         538  0.0  0.0      0     0 ?        R    14:25   0:00  \_ [ip]
root         540  0.0  0.0   5408  1668 ?        R    14:25   0:00  \_ ss -t -p -a -i -s -n -e
root         542  0.0  0.1 1237628 14836 ?       R    14:25   0:00  \_ cilium-bugtool --archiveType=gz --exclude-object-files
root         544  0.0  0.0   5408  1588 ?        R    14:25   0:00  \_ ss -u -p -a -i -s -n -e
root         545  0.0  0.0   1844     4 ?        R    14:25   0:00  \_ bash -c uname -a
root         546  0.0  0.0   6888  1732 ?        R    14:25   0:00  \_ top -b -n 1
root         547  0.0  0.0      4     4 ?        R    14:25   0:00  \_ uptime
root         252  0.0  0.0   2800  1132 pts/0    Ss   14:22   0:00 sh -c (bash || ash || sh)
root         258  0.0  0.0   2800   108 pts/0    S    14:22   0:00  \_ sh -c (bash || ash || sh)
root         259  0.0  0.0   8552  7968 pts/0    S+   14:22   0:00      \_ bash
root           1  6.4  1.4 1428572 183252 ?      Ssl  14:22   0:11 cilium-agent --config-dir=/tmp/cilium/config-map
root         236  0.0  0.0 1229876 3512 ?        Sl   14:22   0:00 cilium-health-responder --listen 4240 --pidfile /var/run/cilium/state/health-endpoint.pid
