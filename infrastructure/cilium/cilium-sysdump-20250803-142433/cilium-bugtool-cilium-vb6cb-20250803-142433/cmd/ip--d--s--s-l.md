1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN mode DEFAULT group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00 promiscuity 0 minmtu 0 maxmtu 0 addrgenmode eui64 numtxqueues 1 numrxqueues 1 gso_max_size 65536 gso_max_segs 65535 
    RX:  bytes packets errors dropped  missed   mcast           
      57233288  585689      0       0       0       0 
    RX errors:  length    crc   frame    fifo overrun
                     0      0       0       0       0 
    TX:  bytes packets errors dropped carrier collsns           
      57233288  585689      0       0       0       0 
    TX errors: aborted   fifo  window heartbt transns
                     0      0       0       0       0 
2: ens18: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UP mode DEFAULT group default qlen 1000
    link/ether bc:24:11:70:10:81 brd ff:ff:ff:ff:ff:ff promiscuity 0 minmtu 68 maxmtu 65535 addrgenmode eui64 numtxqueues 1 numrxqueues 1 gso_max_size 65536 gso_max_segs 65535 parentbus virtio parentdev virtio2 
    RX:  bytes packets errors dropped  missed   mcast           
     653824626 2253259      0       0       0       0 
    RX errors:  length    crc   frame    fifo overrun
                     0      0       0       0       0 
    TX:  bytes packets errors dropped carrier collsns           
      56961448  420246      0       0       0       0 
    TX errors: aborted   fifo  window heartbt transns
                     0      0       0       0       2 
    altname enp0s18
3: cilium_net@cilium_host: <BROADCAST,MULTICAST,NOARP,UP,LOWER_UP> mtu 1500 qdisc noqueue state UP mode DEFAULT group default qlen 1000
    link/ether 1e:5b:56:c3:51:3b brd ff:ff:ff:ff:ff:ff promiscuity 0 minmtu 68 maxmtu 65535 
    veth addrgenmode eui64 numtxqueues 10 numrxqueues 10 gso_max_size 65536 gso_max_segs 65535 
    RX:  bytes packets errors dropped  missed   mcast           
        478214    6261      0       0       0       0 
    RX errors:  length    crc   frame    fifo overrun
                     0      0       0       0       0 
    TX:  bytes packets errors dropped carrier collsns           
          2810      39      0       0       0       0 
    TX errors: aborted   fifo  window heartbt transns
                     0      0       0       0       2 
4: cilium_host@cilium_net: <BROADCAST,MULTICAST,NOARP,UP,LOWER_UP> mtu 1500 qdisc noqueue state UP mode DEFAULT group default qlen 1000
    link/ether 26:e4:9d:a3:4e:a3 brd ff:ff:ff:ff:ff:ff promiscuity 0 minmtu 68 maxmtu 65535 
    veth addrgenmode eui64 numtxqueues 10 numrxqueues 10 gso_max_size 65536 gso_max_segs 65535 
    RX:  bytes packets errors dropped  missed   mcast           
          2810      39      0       0       0       0 
    RX errors:  length    crc   frame    fifo overrun
                     0      0       0       0       0 
    TX:  bytes packets errors dropped carrier collsns           
        478214    6261      0       0       0       0 
    TX errors: aborted   fifo  window heartbt transns
                     0      0       0       0       2 
5: cilium_vxlan: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc noqueue state UNKNOWN mode DEFAULT group default qlen 1000
    link/ether 2a:cb:7b:b8:7e:94 brd ff:ff:ff:ff:ff:ff promiscuity 1 minmtu 68 maxmtu 65535 
    vxlan external id 0 srcport 0 0 dstport 8472 nolearning ttl auto ageing 300 udpcsum noudp6zerocsumtx noudp6zerocsumrx addrgenmode eui64 numtxqueues 1 numrxqueues 1 gso_max_size 65536 gso_max_segs 65535 
    RX:  bytes packets errors dropped  missed   mcast           
             0       0      0       0       0       0 
    RX errors:  length    crc   frame    fifo overrun
                     0      0       0       0       0 
    TX:  bytes packets errors dropped carrier collsns           
        733672   12744      0       0       0       0 
    TX errors: aborted   fifo  window heartbt transns
                     0      0       0       0       0 
66: lxcb16c490a744c@if65: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc noqueue state UP mode DEFAULT group default qlen 1000
    link/ether 7e:d0:45:7e:3f:c1 brd ff:ff:ff:ff:ff:ff link-netnsid 2 promiscuity 0 minmtu 68 maxmtu 65535 
    veth addrgenmode eui64 numtxqueues 10 numrxqueues 10 gso_max_size 65536 gso_max_segs 65535 
    RX:  bytes packets errors dropped  missed   mcast           
       4083857   15042      0       0       0       0 
    RX errors:  length    crc   frame    fifo overrun
                     0      0       0       0       0 
    TX:  bytes packets errors dropped carrier collsns           
       6881007   18185      0       0       0       0 
    TX errors: aborted   fifo  window heartbt transns
                     0      0       0       0       2 
88: lxc1a9e66ab2e3d@if87: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc noqueue state UP mode DEFAULT group default qlen 1000
    link/ether fa:54:30:02:7f:19 brd ff:ff:ff:ff:ff:ff link-netnsid 3 promiscuity 0 minmtu 68 maxmtu 65535 
    veth addrgenmode eui64 numtxqueues 10 numrxqueues 10 gso_max_size 65536 gso_max_segs 65535 
    RX:  bytes packets errors dropped  missed   mcast           
        384849    2278      0       0       0       0 
    RX errors:  length    crc   frame    fifo overrun
                     0      0       0       0       0 
    TX:  bytes packets errors dropped carrier collsns           
        201191    2346      0       0       0       0 
    TX errors: aborted   fifo  window heartbt transns
                     0      0       0       0       2 
92: lxc9f888d020df3@if91: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc noqueue state UP mode DEFAULT group default qlen 1000
    link/ether 0a:f4:f4:a7:f1:cc brd ff:ff:ff:ff:ff:ff link-netnsid 0 promiscuity 0 minmtu 68 maxmtu 65535 
    veth addrgenmode eui64 numtxqueues 10 numrxqueues 10 gso_max_size 65536 gso_max_segs 65535 
    RX:  bytes packets errors dropped  missed   mcast           
        105909    1110      0       0       0       0 
    RX errors:  length    crc   frame    fifo overrun
                     0      0       0       0       0 
    TX:  bytes packets errors dropped carrier collsns           
        175511    1185      0       0       0       0 
    TX errors: aborted   fifo  window heartbt transns
                     0      0       0       0       2 
94: lxc_health@if93: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc noqueue state UP mode DEFAULT group default qlen 1000
    link/ether 52:be:14:18:05:34 brd ff:ff:ff:ff:ff:ff link-netnsid 1 promiscuity 0 minmtu 68 maxmtu 65535 
    veth addrgenmode eui64 numtxqueues 10 numrxqueues 10 gso_max_size 65536 gso_max_segs 65535 
    RX:  bytes packets errors dropped  missed   mcast           
          1628      22      0       0       0       0 
    RX errors:  length    crc   frame    fifo overrun
                     0      0       0       0       0 
    TX:  bytes packets errors dropped carrier collsns           
          2874      37      0       0       0       0 
    TX errors: aborted   fifo  window heartbt transns
                     0      0       0       0       2 
