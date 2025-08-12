qdisc noqueue 0: dev lo root refcnt 2 
 Sent 0 bytes 0 pkt (dropped 0, overlimits 0 requeues 0) 
 backlog 0b 0p requeues 0
qdisc fq_codel 0: dev ens18 root refcnt 2 limit 10240p flows 1024 quantum 1514 target 5ms interval 100ms memory_limit 32Mb ecn drop_batch 64 
 Sent 57547912 bytes 429132 pkt (dropped 0, overlimits 0 requeues 0) 
 backlog 0b 0p requeues 0
  maxpacket 17198 drop_overlimit 0 new_flow_count 4070 ecn_mark 0
  new_flows_len 0 old_flows_len 0
qdisc clsact ffff: dev ens18 parent ffff:fff1 
 Sent 676435300 bytes 2588756 pkt (dropped 0, overlimits 0 requeues 0) 
 backlog 0b 0p requeues 0
qdisc noqueue 0: dev cilium_net root refcnt 2 
 Sent 0 bytes 0 pkt (dropped 0, overlimits 0 requeues 0) 
 backlog 0b 0p requeues 0
qdisc clsact ffff: dev cilium_net parent ffff:fff1 
 Sent 389248 bytes 6240 pkt (dropped 0, overlimits 0 requeues 0) 
 backlog 0b 0p requeues 0
qdisc noqueue 0: dev cilium_host root refcnt 2 
 Sent 0 bytes 0 pkt (dropped 0, overlimits 0 requeues 0) 
 backlog 0b 0p requeues 0
qdisc clsact ffff: dev cilium_host parent ffff:fff1 
 Sent 38727829 bytes 209464 pkt (dropped 0, overlimits 0 requeues 0) 
 backlog 0b 0p requeues 0
qdisc noqueue 0: dev cilium_vxlan root refcnt 2 
 Sent 0 bytes 0 pkt (dropped 0, overlimits 0 requeues 0) 
 backlog 0b 0p requeues 0
qdisc clsact ffff: dev cilium_vxlan parent ffff:fff1 
 Sent 914538 bytes 12779 pkt (dropped 0, overlimits 0 requeues 0) 
 backlog 0b 0p requeues 0
qdisc noqueue 0: dev lxcb16c490a744c root refcnt 2 
 Sent 0 bytes 0 pkt (dropped 0, overlimits 0 requeues 0) 
 backlog 0b 0p requeues 0
qdisc clsact ffff: dev lxcb16c490a744c parent ffff:fff1 
 Sent 3873117 bytes 16173 pkt (dropped 14, overlimits 0 requeues 0) 
 backlog 0b 0p requeues 0
qdisc noqueue 0: dev lxc1a9e66ab2e3d root refcnt 2 
 Sent 0 bytes 0 pkt (dropped 0, overlimits 0 requeues 0) 
 backlog 0b 0p requeues 0
qdisc clsact ffff: dev lxc1a9e66ab2e3d parent ffff:fff1 
 Sent 352881 bytes 2277 pkt (dropped 14, overlimits 0 requeues 0) 
 backlog 0b 0p requeues 0
qdisc noqueue 0: dev lxc9f888d020df3 root refcnt 2 
 Sent 0 bytes 0 pkt (dropped 0, overlimits 0 requeues 0) 
 backlog 0b 0p requeues 0
qdisc clsact ffff: dev lxc9f888d020df3 parent ffff:fff1 
 Sent 90217 bytes 1108 pkt (dropped 11, overlimits 0 requeues 0) 
 backlog 0b 0p requeues 0
qdisc noqueue 0: dev lxc_health root refcnt 2 
 Sent 0 bytes 0 pkt (dropped 0, overlimits 0 requeues 0) 
 backlog 0b 0p requeues 0
qdisc clsact ffff: dev lxc_health parent ffff:fff1 
 Sent 1372 bytes 23 pkt (dropped 0, overlimits 0 requeues 0) 
 backlog 0b 0p requeues 0
