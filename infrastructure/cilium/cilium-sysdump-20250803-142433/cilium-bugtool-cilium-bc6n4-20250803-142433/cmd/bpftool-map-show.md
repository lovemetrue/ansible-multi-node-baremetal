27: hash  name cilium_node_map  flags 0x1
	key 20B  value 4B  max_entries 16384  memlock 393216B
28: hash  name cilium_auth_map  flags 0x1
	key 12B  value 8B  max_entries 524288  memlock 12582912B
29: array  name cilium_runtime_  flags 0x0
	key 4B  value 8B  max_entries 256  memlock 4096B
30: perf_event_array  name cilium_signals  flags 0x0
	key 4B  value 4B  max_entries 8  memlock 4096B
31: perf_event_array  name cilium_events  flags 0x0
	key 4B  value 4B  max_entries 8  memlock 4096B
32: hash  name cilium_lxc  flags 0x1
	key 20B  value 48B  max_entries 65535  memlock 4718592B
34: percpu_hash  name cilium_metrics  flags 0x1
	key 8B  value 16B  max_entries 1024  memlock 139264B
35: lru_hash  name cilium_ratelimi  flags 0x0
	key 8B  value 16B  max_entries 1024  memlock 24576B
36: hash  name cilium_ratelimi  flags 0x1
	key 4B  value 8B  max_entries 64  memlock 4096B
38: lru_hash  name cilium_lb4_reve  flags 0x0
	key 16B  value 8B  max_entries 65536  memlock 1572864B
39: hash  name cilium_lb4_serv  flags 0x1
	key 12B  value 12B  max_entries 65536  memlock 1572864B
40: hash  name cilium_lb4_back  flags 0x1
	key 4B  value 12B  max_entries 65536  memlock 1048576B
41: hash  name cilium_lb4_reve  flags 0x1
	key 2B  value 6B  max_entries 65536  memlock 524288B
42: prog_array  name cilium_call_pol  flags 0x0
	key 4B  value 4B  max_entries 65535  memlock 524288B
	owner_prog_type sched_cls  owner jited
43: prog_array  name cilium_egressca  flags 0x0
	key 4B  value 4B  max_entries 65535  memlock 524288B
	owner_prog_type sched_cls  owner jited
44: lru_hash  name cilium_ct4_glob  flags 0x0
	key 14B  value 56B  max_entries 131072  memlock 9437184B
45: lru_hash  name cilium_ct_any4_  flags 0x0
	key 14B  value 56B  max_entries 65536  memlock 4718592B
46: lru_hash  name cilium_snat_v4_  flags 0x0
	key 14B  value 40B  max_entries 131072  memlock 7340032B
47: lru_hash  name cilium_nodeport  flags 0x0
	key 4B  value 8B  max_entries 131072  memlock 2097152B
48: lru_hash  name cilium_ipv4_fra  flags 0x0
	key 12B  value 4B  max_entries 8192  memlock 131072B
49: hash  name cilium_lb_affin  flags 0x1
	key 8B  value 1B  max_entries 65536  memlock 1048576B
50: lru_hash  name cilium_lb4_affi  flags 0x0
	key 16B  value 16B  max_entries 65536  memlock 2097152B
51: lpm_trie  name cilium_lb4_sour  flags 0x1
	key 12B  value 1B  max_entries 65536  memlock 1048576B
52: hash  name cilium_skip_lb4  flags 0x1
	key 16B  value 1B  max_entries 100  memlock 4096B
83: hash  name cilium_l2_respo  flags 0x1
	key 8B  value 8B  max_entries 4096  memlock 65536B
1192: lpm_trie  name cilium_ipcache  flags 0x1
	key 24B  value 12B  max_entries 512000  memlock 20480000B
1282: lru_percpu_hash  name cilium_policyst  flags 0x2
	key 12B  value 16B  max_entries 65536  memlock 9437184B
1286: percpu_array  name cilium_snat_v4_  flags 0x0
	key 4B  value 4B  max_entries 33  memlock 4096B
1293: lpm_trie  name cilium_policy_v  flags 0x1
	key 12B  value 8B  max_entries 16384  memlock 393216B
1294: lpm_trie  name cilium_policy_v  flags 0x1
	key 12B  value 8B  max_entries 16384  memlock 393216B
1333: lpm_trie  name cilium_policy_v  flags 0x1
	key 12B  value 8B  max_entries 16384  memlock 393216B
1406: lpm_trie  name cilium_policy_v  flags 0x1
	key 12B  value 8B  max_entries 16384  memlock 393216B
1428: hash_of_maps  name cilium_lb4_magl  flags 0x1
	key 2B  value 4B  max_entries 65536  memlock 524288B
1429: lpm_trie  name cilium_ipcache_  flags 0x1
	key 24B  value 24B  max_entries 512000  memlock 24576000B
1433: array  name .rodata.config  flags 0x480
	key 4B  value 72B  max_entries 1  memlock 4096B
	btf_id 3165  frozen
1434: prog_array  name cilium_calls_ov  flags 0x0
	key 4B  value 4B  max_entries 48  memlock 4096B
	owner_prog_type sched_cls  owner jited
1435: lpm_trie  name cilium_policy_v  flags 0x1
	key 12B  value 8B  max_entries 16384  memlock 393216B
1457: array  name .rodata.config  flags 0x480
	key 4B  value 76B  max_entries 1  memlock 4096B
	btf_id 3227  frozen
1458: prog_array  name cilium_calls_ho  flags 0x0
	key 4B  value 4B  max_entries 48  memlock 4096B
	owner_prog_type sched_cls  owner jited
1460: prog_array  name cilium_calls_ne  flags 0x0
	key 4B  value 4B  max_entries 48  memlock 4096B
	owner_prog_type sched_cls  owner jited
1461: array  name .rodata.config  flags 0x480
	key 4B  value 76B  max_entries 1  memlock 4096B
	btf_id 3278  frozen
1463: percpu_array  name cilium_tail_cal  flags 0x0
	key 4B  value 40B  max_entries 1  memlock 4096B
	btf_id 3281
1464: prog_array  name cilium_calls_02  flags 0x0
	key 4B  value 4B  max_entries 48  memlock 4096B
	owner_prog_type sched_cls  owner jited
1465: array  name .rodata.config  flags 0x480
	key 4B  value 112B  max_entries 1  memlock 4096B
	btf_id 3283  frozen
1466: percpu_array  name cilium_tail_cal  flags 0x0
	key 4B  value 40B  max_entries 1  memlock 4096B
	btf_id 3284
1467: prog_array  name cilium_calls_00  flags 0x0
	key 4B  value 4B  max_entries 48  memlock 4096B
	owner_prog_type sched_cls  owner jited
1468: array  name .rodata.config  flags 0x480
	key 4B  value 112B  max_entries 1  memlock 4096B
	btf_id 3286  frozen
1469: prog_array  name cilium_calls_00  flags 0x0
	key 4B  value 4B  max_entries 48  memlock 4096B
	owner_prog_type sched_cls  owner jited
1470: prog_array  name cilium_calls_00  flags 0x0
	key 4B  value 4B  max_entries 48  memlock 4096B
	owner_prog_type sched_cls  owner jited
1471: array  name .rodata.config  flags 0x480
	key 4B  value 112B  max_entries 1  memlock 4096B
	btf_id 3293  frozen
1472: array  name .rodata.config  flags 0x480
	key 4B  value 112B  max_entries 1  memlock 4096B
	btf_id 3294  frozen
1473: percpu_array  name cilium_tail_cal  flags 0x0
	key 4B  value 40B  max_entries 1  memlock 4096B
	btf_id 3295
1474: percpu_array  name cilium_tail_cal  flags 0x0
	key 4B  value 40B  max_entries 1  memlock 4096B
	btf_id 3296
1475: array  name .rodata.config  flags 0x480
	key 4B  value 76B  max_entries 1  memlock 4096B
	btf_id 3340  frozen
1476: prog_array  name cilium_calls_ne  flags 0x0
	key 4B  value 4B  max_entries 48  memlock 4096B
	owner_prog_type sched_cls  owner jited
