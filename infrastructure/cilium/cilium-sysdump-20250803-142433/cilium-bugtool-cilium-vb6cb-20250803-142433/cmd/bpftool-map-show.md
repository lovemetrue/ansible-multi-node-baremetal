20: hash  name cilium_node_map  flags 0x1
	key 20B  value 4B  max_entries 16384  memlock 393216B
21: hash  name cilium_auth_map  flags 0x1
	key 12B  value 8B  max_entries 524288  memlock 12582912B
22: array  name cilium_runtime_  flags 0x0
	key 4B  value 8B  max_entries 256  memlock 4096B
23: perf_event_array  name cilium_signals  flags 0x0
	key 4B  value 4B  max_entries 10  memlock 4096B
24: perf_event_array  name cilium_events  flags 0x0
	key 4B  value 4B  max_entries 10  memlock 4096B
25: hash  name cilium_lxc  flags 0x1
	key 20B  value 48B  max_entries 65535  memlock 4718592B
27: percpu_hash  name cilium_metrics  flags 0x1
	key 8B  value 16B  max_entries 1024  memlock 172032B
28: lru_hash  name cilium_ratelimi  flags 0x0
	key 8B  value 16B  max_entries 1024  memlock 24576B
29: hash  name cilium_ratelimi  flags 0x1
	key 4B  value 8B  max_entries 64  memlock 4096B
31: lru_hash  name cilium_lb4_reve  flags 0x0
	key 16B  value 8B  max_entries 73528  memlock 1765376B
32: hash  name cilium_lb4_serv  flags 0x1
	key 12B  value 12B  max_entries 65536  memlock 1572864B
33: hash  name cilium_lb4_back  flags 0x1
	key 4B  value 12B  max_entries 65536  memlock 1048576B
34: hash  name cilium_lb4_reve  flags 0x1
	key 2B  value 6B  max_entries 65536  memlock 524288B
35: prog_array  name cilium_call_pol  flags 0x0
	key 4B  value 4B  max_entries 65535  memlock 524288B
	owner_prog_type sched_cls  owner jited
36: prog_array  name cilium_egressca  flags 0x0
	key 4B  value 4B  max_entries 65535  memlock 524288B
	owner_prog_type sched_cls  owner jited
37: lru_hash  name cilium_ct4_glob  flags 0x0
	key 14B  value 56B  max_entries 147056  memlock 10588160B
38: lru_hash  name cilium_ct_any4_  flags 0x0
	key 14B  value 56B  max_entries 73528  memlock 5296128B
39: lru_hash  name cilium_snat_v4_  flags 0x0
	key 14B  value 40B  max_entries 147056  memlock 8237056B
40: lru_hash  name cilium_nodeport  flags 0x0
	key 4B  value 8B  max_entries 147056  memlock 2355200B
41: lru_hash  name cilium_ipv4_fra  flags 0x0
	key 12B  value 4B  max_entries 8192  memlock 131072B
42: hash  name cilium_lb_affin  flags 0x1
	key 8B  value 1B  max_entries 65536  memlock 1048576B
43: lru_hash  name cilium_lb4_affi  flags 0x0
	key 16B  value 16B  max_entries 65536  memlock 2097152B
44: lpm_trie  name cilium_lb4_sour  flags 0x1
	key 12B  value 1B  max_entries 65536  memlock 1048576B
45: hash  name cilium_skip_lb4  flags 0x1
	key 16B  value 1B  max_entries 100  memlock 4096B
76: hash  name cilium_l2_respo  flags 0x1
	key 8B  value 8B  max_entries 4096  memlock 65536B
1176: lpm_trie  name cilium_ipcache  flags 0x1
	key 24B  value 12B  max_entries 512000  memlock 20480000B
1278: lru_percpu_hash  name cilium_policyst  flags 0x2
	key 12B  value 16B  max_entries 65530  memlock 11534336B
1282: percpu_array  name cilium_snat_v4_  flags 0x0
	key 4B  value 4B  max_entries 33  memlock 4096B
1290: lpm_trie  name cilium_policy_v  flags 0x1
	key 12B  value 8B  max_entries 16384  memlock 393216B
1291: lpm_trie  name cilium_policy_v  flags 0x1
	key 12B  value 8B  max_entries 16384  memlock 393216B
1326: lpm_trie  name cilium_policy_v  flags 0x1
	key 12B  value 8B  max_entries 16384  memlock 393216B
1393: lpm_trie  name cilium_policy_v  flags 0x1
	key 12B  value 8B  max_entries 16384  memlock 393216B
1413: hash_of_maps  name cilium_lb4_magl  flags 0x1
	key 2B  value 4B  max_entries 65536  memlock 524288B
1414: lpm_trie  name cilium_ipcache_  flags 0x1
	key 24B  value 24B  max_entries 512000  memlock 24576000B
1418: array  name .rodata.config  flags 0x480
	key 4B  value 72B  max_entries 1  memlock 4096B
	btf_id 3318  frozen
1419: prog_array  name cilium_calls_ov  flags 0x0
	key 4B  value 4B  max_entries 48  memlock 4096B
	owner_prog_type sched_cls  owner jited
1420: lpm_trie  name cilium_policy_v  flags 0x1
	key 12B  value 8B  max_entries 16384  memlock 393216B
1433: percpu_array  name cilium_tail_cal  flags 0x0
	key 4B  value 40B  max_entries 1  memlock 4096B
	btf_id 3373
1434: array  name .rodata.config  flags 0x480
	key 4B  value 112B  max_entries 1  memlock 4096B
	btf_id 3375  frozen
1435: prog_array  name cilium_calls_00  flags 0x0
	key 4B  value 4B  max_entries 48  memlock 4096B
	owner_prog_type sched_cls  owner jited
1436: array  name .rodata.config  flags 0x480
	key 4B  value 112B  max_entries 1  memlock 4096B
	btf_id 3387  frozen
1437: percpu_array  name cilium_tail_cal  flags 0x0
	key 4B  value 40B  max_entries 1  memlock 4096B
	btf_id 3388
1438: prog_array  name cilium_calls_03  flags 0x0
	key 4B  value 4B  max_entries 48  memlock 4096B
	owner_prog_type sched_cls  owner jited
1439: prog_array  name cilium_calls_01  flags 0x0
	key 4B  value 4B  max_entries 48  memlock 4096B
	owner_prog_type sched_cls  owner jited
1440: array  name .rodata.config  flags 0x480
	key 4B  value 112B  max_entries 1  memlock 4096B
	btf_id 3390  frozen
1441: percpu_array  name cilium_tail_cal  flags 0x0
	key 4B  value 40B  max_entries 1  memlock 4096B
	btf_id 3393
1442: array  name .rodata.config  flags 0x480
	key 4B  value 112B  max_entries 1  memlock 4096B
	btf_id 3392  frozen
1443: percpu_array  name cilium_tail_cal  flags 0x0
	key 4B  value 40B  max_entries 1  memlock 4096B
	btf_id 3395
1444: prog_array  name cilium_calls_03  flags 0x0
	key 4B  value 4B  max_entries 48  memlock 4096B
	owner_prog_type sched_cls  owner jited
1454: prog_array  name cilium_calls_ho  flags 0x0
	key 4B  value 4B  max_entries 48  memlock 4096B
	owner_prog_type sched_cls  owner jited
1455: array  name .rodata.config  flags 0x480
	key 4B  value 76B  max_entries 1  memlock 4096B
	btf_id 3465  frozen
1457: array  name .rodata.config  flags 0x480
	key 4B  value 76B  max_entries 1  memlock 4096B
	btf_id 3479  frozen
1459: prog_array  name cilium_calls_ne  flags 0x0
	key 4B  value 4B  max_entries 48  memlock 4096B
	owner_prog_type sched_cls  owner jited
1460: array  name .rodata.config  flags 0x480
	key 4B  value 76B  max_entries 1  memlock 4096B
	btf_id 3493  frozen
1462: prog_array  name cilium_calls_ne  flags 0x0
	key 4B  value 4B  max_entries 48  memlock 4096B
	owner_prog_type sched_cls  owner jited
