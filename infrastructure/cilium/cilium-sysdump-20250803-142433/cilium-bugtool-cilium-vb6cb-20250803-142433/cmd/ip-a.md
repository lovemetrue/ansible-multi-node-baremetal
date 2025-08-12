1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host 
       valid_lft forever preferred_lft forever
2: ens18: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UP group default qlen 1000
    link/ether bc:24:11:70:10:81 brd ff:ff:ff:ff:ff:ff
    altname enp0s18
    inet 91.217.196.183/25 metric 100 brd 91.217.196.255 scope global dynamic ens18
       valid_lft 34489sec preferred_lft 34489sec
    inet6 fe80::be24:11ff:fe70:1081/64 scope link 
       valid_lft forever preferred_lft forever
3: cilium_net@cilium_host: <BROADCAST,MULTICAST,NOARP,UP,LOWER_UP> mtu 1500 qdisc noqueue state UP group default qlen 1000
    link/ether 1e:5b:56:c3:51:3b brd ff:ff:ff:ff:ff:ff
    inet6 fe80::1c5b:56ff:fec3:513b/64 scope link 
       valid_lft forever preferred_lft forever
4: cilium_host@cilium_net: <BROADCAST,MULTICAST,NOARP,UP,LOWER_UP> mtu 1500 qdisc noqueue state UP group default qlen 1000
    link/ether 26:e4:9d:a3:4e:a3 brd ff:ff:ff:ff:ff:ff
    inet 10.0.1.138/32 scope global cilium_host
       valid_lft forever preferred_lft forever
    inet6 fe80::24e4:9dff:fea3:4ea3/64 scope link 
       valid_lft forever preferred_lft forever
5: cilium_vxlan: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc noqueue state UNKNOWN group default qlen 1000
    link/ether 2a:cb:7b:b8:7e:94 brd ff:ff:ff:ff:ff:ff
    inet6 fe80::28cb:7bff:feb8:7e94/64 scope link 
       valid_lft forever preferred_lft forever
66: lxcb16c490a744c@if65: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc noqueue state UP group default qlen 1000
    link/ether 7e:d0:45:7e:3f:c1 brd ff:ff:ff:ff:ff:ff link-netnsid 2
    inet6 fe80::7cd0:45ff:fe7e:3fc1/64 scope link 
       valid_lft forever preferred_lft forever
88: lxc1a9e66ab2e3d@if87: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc noqueue state UP group default qlen 1000
    link/ether fa:54:30:02:7f:19 brd ff:ff:ff:ff:ff:ff link-netnsid 3
    inet6 fe80::f854:30ff:fe02:7f19/64 scope link 
       valid_lft forever preferred_lft forever
92: lxc9f888d020df3@if91: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc noqueue state UP group default qlen 1000
    link/ether 0a:f4:f4:a7:f1:cc brd ff:ff:ff:ff:ff:ff link-netnsid 0
    inet6 fe80::8f4:f4ff:fea7:f1cc/64 scope link 
       valid_lft forever preferred_lft forever
94: lxc_health@if93: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc noqueue state UP group default qlen 1000
    link/ether 52:be:14:18:05:34 brd ff:ff:ff:ff:ff:ff link-netnsid 1
    inet6 fe80::50be:14ff:fe18:534/64 scope link 
       valid_lft forever preferred_lft forever
