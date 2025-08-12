qdisc noqueue 0: dev lo root refcnt 2 
 Sent 0 bytes 0 pkt (dropped 0, overlimits 0 requeues 0) 
 backlog 0b 0p requeues 0
qdisc fq_codel 0: dev ens18 root refcnt 2 limit 10240p flows 1024 quantum 1514 target 5ms interval 100ms memory_limit 32Mb ecn drop_batch 64 
 Sent 292479367 bytes 762305 pkt (dropped 0, overlimits 0 requeues 0) 
 backlog 0b 0p requeues 0
  maxpacket 21523 drop_overlimit 0 new_flow_count 15914 ecn_mark 0
  new_flows_len 0 old_flows_len 0
qdisc clsact ffff: dev ens18 parent ffff:fff1 
 Sent 1185546035 bytes 3097013 pkt (dropped 0, overlimits 0 requeues 0) 
 backlog 0b 0p requeues 0
qdisc noqueue 0: dev cilium_net root refcnt 2 
 Sent 0 bytes 0 pkt (dropped 0, overlimits 0 requeues 0) 
 backlog 0b 0p requeues 0
qdisc clsact ffff: dev cilium_net parent ffff:fff1 
 Sent 436848 bytes 7394 pkt (dropped 0, overlimits 0 requeues 0) 
 backlog 0b 0p requeues 0
qdisc noqueue 0: dev cilium_host root refcnt 2 
 Sent 0 bytes 0 pkt (dropped 0, overlimits 0 requeues 0) 
 backlog 0b 0p requeues 0
qdisc clsact ffff: dev cilium_host parent ffff:fff1 
 Sent 45236290 bytes 492935 pkt (dropped 0, overlimits 0 requeues 0) 
 backlog 0b 0p requeues 0
qdisc noqueue 0: dev cilium_vxlan root refcnt 2 
 Sent 0 bytes 0 pkt (dropped 0, overlimits 0 requeues 0) 
 backlog 0b 0p requeues 0
qdisc clsact ffff: dev cilium_vxlan parent ffff:fff1 
 Sent 2330224 bytes 31953 pkt (dropped 0, overlimits 0 requeues 0) 
 backlog 0b 0p requeues 0
qdisc noqueue 0: dev lxcf57d951d1bb3 root refcnt 2 
 Sent 0 bytes 0 pkt (dropped 0, overlimits 0 requeues 0) 
 backlog 0b 0p requeues 0
qdisc clsact ffff: dev lxcf57d951d1bb3 parent ffff:fff1 
 Sent 7612 bytes 102 pkt (dropped 16, overlimits 0 requeues 0) 
 backlog 0b 0p requeues 0
qdisc noqueue 0: dev lxc5ca0daa43914 root refcnt 2 
 Sent 0 bytes 0 pkt (dropped 0, overlimits 0 requeues 0) 
 backlog 0b 0p requeues 0
qdisc clsact ffff: dev lxc5ca0daa43914 parent ffff:fff1 
 Sent 293508 bytes 4199 pkt (dropped 14, overlimits 0 requeues 0) 
 backlog 0b 0p requeues 0
qdisc noqueue 0: dev lxcf9e134da9662 root refcnt 2 
 Sent 0 bytes 0 pkt (dropped 0, overlimits 0 requeues 0) 
 backlog 0b 0p requeues 0
qdisc clsact ffff: dev lxcf9e134da9662 parent ffff:fff1 
 Sent 88000 bytes 1073 pkt (dropped 13, overlimits 0 requeues 0) 
 backlog 0b 0p requeues 0
qdisc noqueue 0: dev lxc_health root refcnt 2 
 Sent 0 bytes 0 pkt (dropped 0, overlimits 0 requeues 0) 
 backlog 0b 0p requeues 0
qdisc clsact ffff: dev lxc_health parent ffff:fff1 
 Sent 1292 bytes 21 pkt (dropped 0, overlimits 0 requeues 0) 
 backlog 0b 0p requeues 0
