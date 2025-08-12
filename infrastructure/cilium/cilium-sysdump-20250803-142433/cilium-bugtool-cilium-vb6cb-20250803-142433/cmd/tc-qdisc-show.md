qdisc noqueue 0: dev lo root refcnt 2 
qdisc fq_codel 0: dev ens18 root refcnt 2 limit 10240p flows 1024 quantum 1514 target 5ms interval 100ms memory_limit 32Mb ecn drop_batch 64 
qdisc clsact ffff: dev ens18 parent ffff:fff1 
qdisc noqueue 0: dev cilium_net root refcnt 2 
qdisc clsact ffff: dev cilium_net parent ffff:fff1 
qdisc noqueue 0: dev cilium_host root refcnt 2 
qdisc clsact ffff: dev cilium_host parent ffff:fff1 
qdisc noqueue 0: dev cilium_vxlan root refcnt 2 
qdisc clsact ffff: dev cilium_vxlan parent ffff:fff1 
qdisc noqueue 0: dev lxcb16c490a744c root refcnt 2 
qdisc clsact ffff: dev lxcb16c490a744c parent ffff:fff1 
qdisc noqueue 0: dev lxc1a9e66ab2e3d root refcnt 2 
qdisc clsact ffff: dev lxc1a9e66ab2e3d parent ffff:fff1 
qdisc noqueue 0: dev lxc9f888d020df3 root refcnt 2 
qdisc clsact ffff: dev lxc9f888d020df3 parent ffff:fff1 
qdisc noqueue 0: dev lxc_health root refcnt 2 
qdisc clsact ffff: dev lxc_health parent ffff:fff1 
