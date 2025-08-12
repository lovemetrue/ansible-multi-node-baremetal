1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host 
       valid_lft forever preferred_lft forever
2: ens18: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UP group default qlen 1000
    link/ether bc:24:11:57:4e:fb brd ff:ff:ff:ff:ff:ff
    altname enp0s18
    inet 91.217.196.189/25 metric 100 brd 91.217.196.255 scope global dynamic ens18
       valid_lft 33880sec preferred_lft 33880sec
    inet6 fe80::be24:11ff:fe57:4efb/64 scope link 
       valid_lft forever preferred_lft forever
3: cilium_net@cilium_host: <BROADCAST,MULTICAST,NOARP,UP,LOWER_UP> mtu 1500 qdisc noqueue state UP group default qlen 1000
    link/ether d2:13:35:37:8b:fc brd ff:ff:ff:ff:ff:ff
    inet6 fe80::d013:35ff:fe37:8bfc/64 scope link 
       valid_lft forever preferred_lft forever
4: cilium_host@cilium_net: <BROADCAST,MULTICAST,NOARP,UP,LOWER_UP> mtu 1500 qdisc noqueue state UP group default qlen 1000
    link/ether 8a:2a:c0:92:10:72 brd ff:ff:ff:ff:ff:ff
    inet 10.0.0.124/32 scope global cilium_host
       valid_lft forever preferred_lft forever
    inet6 fe80::882a:c0ff:fe92:1072/64 scope link 
       valid_lft forever preferred_lft forever
5: cilium_vxlan: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc noqueue state UNKNOWN group default qlen 1000
    link/ether 9a:8f:7b:da:54:cc brd ff:ff:ff:ff:ff:ff
    inet6 fe80::988f:7bff:feda:54cc/64 scope link 
       valid_lft forever preferred_lft forever
68: lxcf57d951d1bb3@if67: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc noqueue state UP group default qlen 1000
    link/ether ca:e6:42:de:e8:18 brd ff:ff:ff:ff:ff:ff link-netnsid 1
    inet6 fe80::c8e6:42ff:fede:e818/64 scope link 
       valid_lft forever preferred_lft forever
90: lxc5ca0daa43914@if89: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc noqueue state UP group default qlen 1000
    link/ether 12:59:28:a0:89:94 brd ff:ff:ff:ff:ff:ff link-netnsid 3
    inet6 fe80::1059:28ff:fea0:8994/64 scope link 
       valid_lft forever preferred_lft forever
94: lxcf9e134da9662@if93: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc noqueue state UP group default qlen 1000
    link/ether 52:b7:d0:6a:ac:bd brd ff:ff:ff:ff:ff:ff link-netnsid 0
    inet6 fe80::50b7:d0ff:fe6a:acbd/64 scope link 
       valid_lft forever preferred_lft forever
96: lxc_health@if95: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc noqueue state UP group default qlen 1000
    link/ether 46:47:25:fa:18:58 brd ff:ff:ff:ff:ff:ff link-netnsid 2
    inet6 fe80::4447:25ff:fefa:1858/64 scope link 
       valid_lft forever preferred_lft forever
