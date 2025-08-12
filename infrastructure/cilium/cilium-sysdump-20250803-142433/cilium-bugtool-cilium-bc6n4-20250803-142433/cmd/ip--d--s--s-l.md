1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN mode DEFAULT group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00 promiscuity 0 minmtu 0 maxmtu 0 addrgenmode eui64 numtxqueues 1 numrxqueues 1 gso_max_size 65536 gso_max_segs 65535 
    RX:  bytes  packets errors dropped  missed   mcast           
    4173031604 19728596      0       0       0       0 
    RX errors:   length    crc   frame    fifo overrun
                      0      0       0       0       0 
    TX:  bytes  packets errors dropped carrier collsns           
    4173031604 19728596      0       0       0       0 
    TX errors:  aborted   fifo  window heartbt transns
                      0      0       0       0       0 
2: ens18: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UP mode DEFAULT group default qlen 1000
    link/ether bc:24:11:57:4e:fb brd ff:ff:ff:ff:ff:ff promiscuity 0 minmtu 68 maxmtu 65535 addrgenmode eui64 numtxqueues 1 numrxqueues 1 gso_max_size 65536 gso_max_segs 65535 parentbus virtio parentdev virtio2 
    RX:  bytes packets errors dropped  missed   mcast           
    1511554676 2792073      0       0       0       0 
    RX errors:  length    crc   frame    fifo overrun
                     0      0       0       0       0 
    TX:  bytes packets errors dropped carrier collsns           
     287199967  682309      0       0       0       0 
    TX errors: aborted   fifo  window heartbt transns
                     0      0       0       0       2 
    altname enp0s18
3: cilium_net@cilium_host: <BROADCAST,MULTICAST,NOARP,UP,LOWER_UP> mtu 1500 qdisc noqueue state UP mode DEFAULT group default qlen 1000
    link/ether d2:13:35:37:8b:fc brd ff:ff:ff:ff:ff:ff promiscuity 0 minmtu 68 maxmtu 65535 
    veth addrgenmode eui64 numtxqueues 8 numrxqueues 8 gso_max_size 65536 gso_max_segs 65535 
    RX:  bytes packets errors dropped  missed   mcast           
        540864    7400      0       0       0       0 
    RX errors:  length    crc   frame    fifo overrun
                     0      0       0       0       0 
    TX:  bytes packets errors dropped carrier collsns           
          2880      40      0       0       0       0 
    TX errors: aborted   fifo  window heartbt transns
                     0      0       0       0       2 
4: cilium_host@cilium_net: <BROADCAST,MULTICAST,NOARP,UP,LOWER_UP> mtu 1500 qdisc noqueue state UP mode DEFAULT group default qlen 1000
    link/ether 8a:2a:c0:92:10:72 brd ff:ff:ff:ff:ff:ff promiscuity 0 minmtu 68 maxmtu 65535 
    veth addrgenmode eui64 numtxqueues 8 numrxqueues 8 gso_max_size 65536 gso_max_segs 65535 
    RX:  bytes packets errors dropped  missed   mcast           
          2880      40      0       0       0       0 
    RX errors:  length    crc   frame    fifo overrun
                     0      0       0       0       0 
    TX:  bytes packets errors dropped carrier collsns           
        540864    7400      0       0       0       0 
    TX errors: aborted   fifo  window heartbt transns
                     0      0       0       0       2 
5: cilium_vxlan: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc noqueue state UNKNOWN mode DEFAULT group default qlen 1000
    link/ether 9a:8f:7b:da:54:cc brd ff:ff:ff:ff:ff:ff promiscuity 1 minmtu 68 maxmtu 65535 
    vxlan external id 0 srcport 0 0 dstport 8472 nolearning ttl auto ageing 300 udpcsum noudp6zerocsumtx noudp6zerocsumrx addrgenmode eui64 numtxqueues 1 numrxqueues 1 gso_max_size 65536 gso_max_segs 65535 
    RX:  bytes packets errors dropped  missed   mcast           
             0       0      0       0       0       0 
    RX errors:  length    crc   frame    fifo overrun
                     0      0       0       0       0 
    TX:  bytes packets errors dropped carrier collsns           
       1880978   31919      0       0       0       0 
    TX errors: aborted   fifo  window heartbt transns
                     0      0       0       0       0 
68: lxcf57d951d1bb3@if67: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc noqueue state UP mode DEFAULT group default qlen 1000
    link/ether ca:e6:42:de:e8:18 brd ff:ff:ff:ff:ff:ff link-netnsid 1 promiscuity 0 minmtu 68 maxmtu 65535 
    veth addrgenmode eui64 numtxqueues 8 numrxqueues 8 gso_max_size 65536 gso_max_segs 65535 
    RX:  bytes packets errors dropped  missed   mcast           
          9130     103      0       0       0       0 
    RX errors:  length    crc   frame    fifo overrun
                     0      0       0       0       0 
    TX:  bytes packets errors dropped carrier collsns           
          4091      43      0       0       0       0 
    TX errors: aborted   fifo  window heartbt transns
                     0      0       0       0       2 
90: lxc5ca0daa43914@if89: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc noqueue state UP mode DEFAULT group default qlen 1000
    link/ether 12:59:28:a0:89:94 brd ff:ff:ff:ff:ff:ff link-netnsid 3 promiscuity 0 minmtu 68 maxmtu 65535 
    veth addrgenmode eui64 numtxqueues 8 numrxqueues 8 gso_max_size 65536 gso_max_segs 65535 
    RX:  bytes packets errors dropped  missed   mcast           
        352342    4197      0       0       0       0 
    RX errors:  length    crc   frame    fifo overrun
                     0      0       0       0       0 
    TX:  bytes packets errors dropped carrier collsns           
        482694    5310      0       0       0       0 
    TX errors: aborted   fifo  window heartbt transns
                     0      0       0       0       2 
94: lxcf9e134da9662@if93: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc noqueue state UP mode DEFAULT group default qlen 1000
    link/ether 52:b7:d0:6a:ac:bd brd ff:ff:ff:ff:ff:ff link-netnsid 0 promiscuity 0 minmtu 68 maxmtu 65535 
    veth addrgenmode eui64 numtxqueues 8 numrxqueues 8 gso_max_size 65536 gso_max_segs 65535 
    RX:  bytes packets errors dropped  missed   mcast           
        103112    1074      0       0       0       0 
    RX errors:  length    crc   frame    fifo overrun
                     0      0       0       0       0 
    TX:  bytes packets errors dropped carrier collsns           
        167979    1183      0       0       0       0 
    TX errors: aborted   fifo  window heartbt transns
                     0      0       0       0       2 
96: lxc_health@if95: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc noqueue state UP mode DEFAULT group default qlen 1000
    link/ether 46:47:25:fa:18:58 brd ff:ff:ff:ff:ff:ff link-netnsid 2 promiscuity 0 minmtu 68 maxmtu 65535 
    veth addrgenmode eui64 numtxqueues 8 numrxqueues 8 gso_max_size 65536 gso_max_segs 65535 
    RX:  bytes packets errors dropped  missed   mcast           
          1586      21      0       0       0       0 
    RX errors:  length    crc   frame    fifo overrun
                     0      0       0       0       0 
    TX:  bytes packets errors dropped carrier collsns           
          2832      36      0       0       0       0 
    TX errors: aborted   fifo  window heartbt transns
                     0      0       0       0       2 
