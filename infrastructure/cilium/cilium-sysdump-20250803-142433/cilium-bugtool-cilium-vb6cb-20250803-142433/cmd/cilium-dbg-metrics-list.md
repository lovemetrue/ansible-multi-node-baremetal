Metric                                                                   Labels                                                                                                   Value
cilium_act_processing_time_seconds                                                                                                                                                0s / 0s / 0s
cilium_agent_api_process_time_seconds                                    method=GET path=/v1/cluster return_code=200                                                              2.5ms / 4.5ms / 4.95ms
cilium_agent_api_process_time_seconds                                    method=GET path=/v1/endpoint return_code=200                                                             2.5ms / 4.5ms / 4.95ms
cilium_agent_api_process_time_seconds                                    method=GET path=/v1/healthz return_code=200                                                              2.5ms / 4.5ms / 4.95ms
cilium_agent_bootstrap_seconds                                           outcome=success scope=bpfBase                                                                            0.000440
cilium_agent_bootstrap_seconds                                           outcome=success scope=cleanup                                                                            0.000462
cilium_agent_bootstrap_seconds                                           outcome=success scope=daemonInit                                                                         0.001788
cilium_agent_bootstrap_seconds                                           outcome=success scope=earlyInit                                                                          0.138394
cilium_agent_bootstrap_seconds                                           outcome=success scope=enableConntrack                                                                    0.000042
cilium_agent_bootstrap_seconds                                           outcome=success scope=fqdn                                                                               0.000097
cilium_agent_bootstrap_seconds                                           outcome=success scope=healthCheck                                                                        0.002119
cilium_agent_bootstrap_seconds                                           outcome=success scope=ipam                                                                               0.015279
cilium_agent_bootstrap_seconds                                           outcome=success scope=k8sInit                                                                            0.123286
cilium_agent_bootstrap_seconds                                           outcome=success scope=mapsInit                                                                           0.000563
cilium_agent_bootstrap_seconds                                           outcome=success scope=overall                                                                            2.625005
cilium_agent_bootstrap_seconds                                           outcome=success scope=restore                                                                            0.004485
cilium_api_limiter_adjustment_factor                                     api_call=endpoint-list                                                                                   100.000000
cilium_api_limiter_processed_requests_total                              api_call=endpoint-list outcome=success return_code=200                                                   2.000000
cilium_api_limiter_processing_duration_seconds                           api_call=endpoint-list value=estimated                                                                   0.300000
cilium_api_limiter_processing_duration_seconds                           api_call=endpoint-list value=mean                                                                        0.000243
cilium_api_limiter_rate_limit                                            api_call=endpoint-list value=burst                                                                       202.000000
cilium_api_limiter_rate_limit                                            api_call=endpoint-list value=limit                                                                       100.000000
cilium_api_limiter_requests_in_flight                                    api_call=endpoint-list value=in-flight                                                                   0.000000
cilium_api_limiter_requests_in_flight                                    api_call=endpoint-list value=limit                                                                       101.000000
cilium_api_limiter_wait_duration_seconds                                 api_call=endpoint-list value=max                                                                         0.000000
cilium_api_limiter_wait_duration_seconds                                 api_call=endpoint-list value=mean                                                                        0.000087
cilium_api_limiter_wait_duration_seconds                                 api_call=endpoint-list value=min                                                                         0.000000
cilium_bpf_map_capacity                                                  map_group=cilium_auth_map                                                                                524288.000000
cilium_bpf_map_capacity                                                  map_group=cilium_call_policy                                                                             65535.000000
cilium_bpf_map_capacity                                                  map_group=cilium_ct4_global                                                                              147056.000000
cilium_bpf_map_capacity                                                  map_group=cilium_ct_any4_global                                                                          73528.000000
cilium_bpf_map_capacity                                                  map_group=cilium_egresscall_policy                                                                       65535.000000
cilium_bpf_map_capacity                                                  map_group=cilium_events                                                                                  10.000000
cilium_bpf_map_capacity                                                  map_group=cilium_ipcache_v2                                                                              512000.000000
cilium_bpf_map_capacity                                                  map_group=cilium_ipv4_frag_datagrams                                                                     8192.000000
cilium_bpf_map_capacity                                                  map_group=cilium_lb4_reverse_sk                                                                          73528.000000
cilium_bpf_map_capacity                                                  map_group=cilium_lxc                                                                                     65535.000000
cilium_bpf_map_capacity                                                  map_group=cilium_metrics                                                                                 1024.000000
cilium_bpf_map_capacity                                                  map_group=cilium_node_map_v2                                                                             16384.000000
cilium_bpf_map_capacity                                                  map_group=cilium_nodeport_neigh4                                                                         147056.000000
cilium_bpf_map_capacity                                                  map_group=cilium_policystats                                                                             65530.000000
cilium_bpf_map_capacity                                                  map_group=cilium_ratelimit                                                                               1024.000000
cilium_bpf_map_capacity                                                  map_group=cilium_ratelimit_metrics                                                                       64.000000
cilium_bpf_map_capacity                                                  map_group=cilium_runtime_config                                                                          256.000000
cilium_bpf_map_capacity                                                  map_group=cilium_signals                                                                                 10.000000
cilium_bpf_map_capacity                                                  map_group=cilium_skip_lb4                                                                                100.000000
cilium_bpf_map_capacity                                                  map_group=cilium_snat_v4_alloc_retries                                                                   33.000000
cilium_bpf_map_capacity                                                  map_group=cilium_snat_v4_external                                                                        147056.000000
cilium_bpf_map_capacity                                                  map_group=default                                                                                        65536.000000
cilium_bpf_map_capacity                                                  map_group=endpoint_policy                                                                                16384.000000
cilium_bpf_map_ops_total                                                 map_name=ct4_global operation=delete outcome=success                                                     206.000000
cilium_bpf_map_ops_total                                                 map_name=ct_any4_global operation=delete outcome=success                                                 1.000000
cilium_bpf_map_ops_total                                                 map_name=ipcache_v2 operation=update outcome=success                                                     14.000000
cilium_bpf_map_ops_total                                                 map_name=lb4_backends_v3 operation=delete outcome=success                                                2.000000
cilium_bpf_map_ops_total                                                 map_name=lb4_backends_v3 operation=update outcome=success                                                12.000000
cilium_bpf_map_ops_total                                                 map_name=lb4_reverse_nat operation=update outcome=success                                                11.000000
cilium_bpf_map_ops_total                                                 map_name=lb4_services_v2 operation=delete outcome=success                                                2.000000
cilium_bpf_map_ops_total                                                 map_name=lb4_services_v2 operation=update outcome=success                                                23.000000
cilium_bpf_map_ops_total                                                 map_name=lb_affinity_match operation=delete outcome=fail                                                 13.000000
cilium_bpf_map_ops_total                                                 map_name=lxc operation=update outcome=success                                                            12.000000
cilium_bpf_map_ops_total                                                 map_name=policy operation=update outcome=success                                                         3.000000
cilium_bpf_map_ops_total                                                 map_name=runtime_config operation=update outcome=success                                                 179.000000
cilium_bpf_map_ops_total                                                 map_name=snat_v4_external operation=delete outcome=success                                               12.000000
cilium_bpf_map_pressure                                                  map_name=ct4_global                                                                                      0.000789
cilium_bpf_map_pressure                                                  map_name=ct_any4_global                                                                                  0.000095
cilium_bpf_map_pressure                                                  map_name=ipcache_v2                                                                                      0.000027
cilium_bpf_map_pressure                                                  map_name=lxc                                                                                             0.000061
cilium_bpf_maps                                                                                                                                                                   48.000000
cilium_bpf_maps_virtual_memory_max_bytes                                                                                                                                          91889664.000000
cilium_bpf_progs                                                                                                                                                                  82.000000
cilium_bpf_progs_virtual_memory_max_bytes                                                                                                                                         737280.000000
cilium_controllers_failing                                                                                                                                                        0.000000
cilium_controllers_runs_duration_seconds                                 status=success                                                                                           2.702ms / 4.864ms / 8.217s
cilium_controllers_runs_total                                            status=success                                                                                           107.000000
cilium_datapath_conntrack_dump_resets_total                              area=conntrack family=ipv4 name=dump_interrupts                                                          0.000000
cilium_datapath_conntrack_gc_duration_seconds                            family=ipv4 protocol=TCP status=completed                                                                2.5ms / 4.5ms / 4.95ms
cilium_datapath_conntrack_gc_duration_seconds                            family=ipv4 protocol=non-TCP status=completed                                                            2.5ms / 4.5ms / 4.95ms
cilium_datapath_conntrack_gc_entries                                     family=ipv4 protocol=TCP status=alive                                                                    24.000000
cilium_datapath_conntrack_gc_entries                                     family=ipv4 protocol=TCP status=deleted                                                                  0.000000
cilium_datapath_conntrack_gc_entries                                     family=ipv4 protocol=non-TCP status=alive                                                                3.000000
cilium_datapath_conntrack_gc_entries                                     family=ipv4 protocol=non-TCP status=deleted                                                              0.000000
cilium_datapath_conntrack_gc_interval_seconds                            global=global                                                                                            450.000000
cilium_datapath_conntrack_gc_key_fallbacks_total                         family=ipv4 protocol=TCP                                                                                 0.000000
cilium_datapath_conntrack_gc_key_fallbacks_total                         family=ipv4 protocol=non-TCP                                                                             0.000000
cilium_datapath_conntrack_gc_runs_total                                  family=ipv4 protocol=TCP status=completed                                                                2.000000
cilium_datapath_conntrack_gc_runs_total                                  family=ipv4 protocol=non-TCP status=completed                                                            2.000000
cilium_drift_checker_config_delta                                                                                                                                                 0.000000
cilium_drop_bytes_total                                                  direction=EGRESS reason=Unsupported L3 protocol                                                          28148.000000
cilium_drop_count_total                                                  direction=EGRESS reason=Unsupported L3 protocol                                                          376.000000
cilium_endpoint                                                                                                                                                                   5.000000
cilium_endpoint_regeneration_time_stats_seconds                          scope=bpfCompilation status=success                                                                      3.75s / 4.75s / 4.975s
cilium_endpoint_regeneration_time_stats_seconds                          scope=bpfLoadProg status=success                                                                         250ms / 750ms / 975ms
cilium_endpoint_regeneration_time_stats_seconds                          scope=bpfWaitForELF status=success                                                                       5ms / 5s / 9.5s
cilium_endpoint_regeneration_time_stats_seconds                          scope=mapSync status=success                                                                             2.5ms / 4.5ms / 4.95ms
cilium_endpoint_regeneration_time_stats_seconds                          scope=policyCalculation status=success                                                                   2.5ms / 4.5ms / 4.95ms
cilium_endpoint_regeneration_time_stats_seconds                          scope=prepareBuild status=success                                                                        2.5ms / 4.5ms / 4.95ms
cilium_endpoint_regeneration_time_stats_seconds                          scope=proxyPolicyCalculation status=success                                                              2.5ms / 4.5ms / 4.95ms
cilium_endpoint_regeneration_time_stats_seconds                          scope=proxyWaitForAck status=success                                                                     2.5ms / 4.5ms / 4.95ms
cilium_endpoint_regeneration_time_stats_seconds                          scope=total status=success                                                                               175ms / 8.25s / 9.825s
cilium_endpoint_regeneration_time_stats_seconds                          scope=waitingForCTClean status=success                                                                   2.5ms / 4.5ms / 4.95ms
cilium_endpoint_regeneration_time_stats_seconds                          scope=waitingForLock status=success                                                                      3.75ms / 4.25s / 4.925s
cilium_endpoint_regeneration_time_stats_seconds                          scope=waitingForPolicyRepository status=success                                                          2.5ms / 4.5ms / 4.95ms
cilium_endpoint_regenerations_total                                      outcome=fail                                                                                             0.000000
cilium_endpoint_regenerations_total                                      outcome=success                                                                                          15.000000
cilium_endpoint_state                                                    endpoint_state=ready                                                                                     5.000000
cilium_endpoint_state                                                    endpoint_state=regenerating                                                                              0.000000
cilium_endpoint_state                                                    endpoint_state=restoring                                                                                 0.000000
cilium_endpoint_state                                                    endpoint_state=waiting-for-identity                                                                      0.000000
cilium_endpoint_state                                                    endpoint_state=waiting-to-regenerate                                                                     0.000000
cilium_errors_warnings_total                                             level=ERROR subsystem=init                                                                               0.000000
cilium_errors_warnings_total                                             level=INFO subsystem=cilium-health-api-server                                                            1.000000
cilium_errors_warnings_total                                             level=INFO subsystem=endpoint                                                                            21.000000
cilium_errors_warnings_total                                             level=WARN subsystem=init                                                                                0.000000
cilium_event_ts                                                          action=GET scope=/v1/cluster source=api                                                                  1754231059.313808
cilium_event_ts                                                          action=GET scope=/v1/endpoint source=api                                                                 1754231049.556692
cilium_event_ts                                                          action=GET scope=/v1/healthz source=api                                                                  1754231105.456790
cilium_event_ts                                                          action=update scope=CiliumEndpoint source=k8s                                                            1754230925.437662
cilium_event_ts                                                          action=update scope=CiliumNode source=k8s                                                                1754230925.436617
cilium_event_ts                                                          action=update scope=Endpoint source=k8s                                                                  1754230969.830223
cilium_event_ts                                                          action=update scope=Node source=k8s                                                                      1754231101.482438
cilium_event_ts                                                          action=update scope=Pod source=k8s                                                                       1754230930.168053
cilium_event_ts                                                          action=update scope=Service source=k8s                                                                   1754230925.433680
cilium_feature_adv_connect_and_lb_bandwidth_manager_enabled                                                                                                                       0.000000
cilium_feature_adv_connect_and_lb_bgp_enabled                                                                                                                                     0.000000
cilium_feature_adv_connect_and_lb_cilium_envoy_config_enabled                                                                                                                     0.000000
cilium_feature_adv_connect_and_lb_cilium_node_config_enabled                                                                                                                      0.000000
cilium_feature_adv_connect_and_lb_egress_gateway_enabled                                                                                                                          0.000000
cilium_feature_adv_connect_and_lb_envoy_proxy_enabled                    mode=standalone                                                                                          1.000000
cilium_feature_adv_connect_and_lb_k8s_internal_traffic_policy_enabled                                                                                                             1.000000
cilium_feature_adv_connect_and_lb_kube_proxy_replacement_enabled                                                                                                                  1.000000
cilium_feature_adv_connect_and_lb_l2_lb_enabled                                                                                                                                   0.000000
cilium_feature_adv_connect_and_lb_l2_pod_announcement_enabled                                                                                                                     0.000000
cilium_feature_adv_connect_and_lb_node_port_configuration                acceleration=disabled algorithm=random mode=snat                                                         1.000000
cilium_feature_adv_connect_and_lb_sctp_enabled                                                                                                                                    0.000000
cilium_feature_adv_connect_and_lb_vtep_enabled                                                                                                                                    0.000000
cilium_feature_controlplane_cilium_endpoint_slices_enabled                                                                                                                        0.000000
cilium_feature_controlplane_identity_allocation                          mode=crd                                                                                                 1.000000
cilium_feature_controlplane_ipam                                         mode=kubernetes                                                                                          1.000000
cilium_feature_datapath_chaining_enabled                                 mode=none                                                                                                1.000000
cilium_feature_datapath_config                                           mode=veth                                                                                                1.000000
cilium_feature_datapath_internet_protocol                                address_family=ipv4-only                                                                                 1.000000
cilium_feature_datapath_network                                          mode=overlay-vxlan                                                                                       1.000000
cilium_feature_network_policies_host_firewall_enabled                                                                                                                             0.000000
cilium_feature_network_policies_internal_traffic_policy_services_total   action=add                                                                                               1.000000
cilium_feature_network_policies_local_redirect_policy_enabled                                                                                                                     1.000000
cilium_feature_network_policies_mutual_auth_enabled                                                                                                                               1.000000
cilium_feature_network_policies_non_defaultdeny_policies_enabled                                                                                                                  1.000000
cilium_forward_bytes_total                                               direction=EGRESS                                                                                         91381012.000000
cilium_forward_bytes_total                                               direction=INGRESS                                                                                        774881172.000000
cilium_forward_count_total                                               direction=EGRESS                                                                                         623606.000000
cilium_forward_count_total                                               direction=INGRESS                                                                                        2807905.000000
cilium_fqdn_gc_deletions_total                                                                                                                                                    0.000000
cilium_fqdn_selectors                                                                                                                                                             0.000000
cilium_hive_status                                                       status=ok                                                                                                76.000000
cilium_hive_status                                                       status=stopped                                                                                           12.000000
cilium_identity                                                          type=cluster_local                                                                                       3.000000
cilium_identity                                                          type=reserved                                                                                            10.000000
cilium_identity_label_sources                                            source=k8s                                                                                               3.000000
cilium_identity_label_sources                                            source=reserved                                                                                          10.000000
cilium_identity_updater_timer_duration                                   name=id-alloc-update-policy-maps                                                                         2.5m / 4.5m / 4.95m
cilium_identity_updater_timer_trigger_folds                              name=id-alloc-update-policy-maps                                                                         750m / 950m / 995m
cilium_identity_updater_timer_trigger_latency                            name=id-alloc-update-policy-maps                                                                         2.5m / 4.5m / 4.95m
cilium_ip_addresses                                                      family=ipv4                                                                                              5.000000
cilium_ip_addresses                                                      family=ipv6                                                                                              0.000000
cilium_ipam_capacity                                                     family=ipv4                                                                                              254.000000
cilium_ipam_events_total                                                 action=allocate family=ipv4                                                                              5.000000
cilium_ipcache_errors_total                                              error=cannot_overwrite_by_source type=upsert                                                             3.000000
cilium_k8s_client_api_calls_total                                        host=10.96.0.1:443 method=GET return_code=200                                                            45.000000
cilium_k8s_client_api_calls_total                                        host=10.96.0.1:443 method=GET return_code=403                                                            1.000000
cilium_k8s_client_api_calls_total                                        host=10.96.0.1:443 method=PUT return_code=200                                                            1.000000
cilium_k8s_client_api_latency_time_seconds                               method=GET path=/api/v1/namespaces                                                                       2.5ms / 4.5ms / 4.95ms
cilium_k8s_client_api_latency_time_seconds                               method=GET path=/api/v1/namespaces/{namespace}/configmaps                                                2.5ms / 4.5ms / 4.95ms
cilium_k8s_client_api_latency_time_seconds                               method=GET path=/api/v1/namespaces/{namespace}/secrets                                                   2.5ms / 4.5ms / 4.95ms
cilium_k8s_client_api_latency_time_seconds                               method=GET path=/api/v1/namespaces/{name}                                                                17.5ms / 23.5ms / 24.85ms
cilium_k8s_client_api_latency_time_seconds                               method=GET path=/api/v1/nodes                                                                            2.5ms / 4.5ms / 4.95ms
cilium_k8s_client_api_latency_time_seconds                               method=GET path=/api/v1/pods                                                                             2.5ms / 4.5ms / 4.95ms
cilium_k8s_client_api_latency_time_seconds                               method=GET path=/api/v1/services                                                                         2.5ms / 4.5ms / 4.95ms
cilium_k8s_client_api_latency_time_seconds                               method=GET path=/apis/apiextensions.k8s.io/v1/customresourcedefinitions                                  2.5ms / 4.5ms / 4.95ms
cilium_k8s_client_api_latency_time_seconds                               method=GET path=/apis/cilium.io/v2/ciliumcidrgroups                                                      2.5ms / 4.5ms / 4.95ms
cilium_k8s_client_api_latency_time_seconds                               method=GET path=/apis/cilium.io/v2/ciliumclusterwidenetworkpolicies                                      2.5ms / 4.5ms / 4.95ms
cilium_k8s_client_api_latency_time_seconds                               method=GET path=/apis/cilium.io/v2/ciliumendpoints                                                       2.5ms / 4.5ms / 4.95ms
cilium_k8s_client_api_latency_time_seconds                               method=GET path=/apis/cilium.io/v2/ciliumidentities                                                      2.5ms / 4.5ms / 4.95ms
cilium_k8s_client_api_latency_time_seconds                               method=GET path=/apis/cilium.io/v2/ciliumlocalredirectpolicies                                           2.5ms / 4.5ms / 4.95ms
cilium_k8s_client_api_latency_time_seconds                               method=GET path=/apis/cilium.io/v2/ciliumnetworkpolicies                                                 2.5ms / 4.5ms / 4.95ms
cilium_k8s_client_api_latency_time_seconds                               method=GET path=/apis/cilium.io/v2/ciliumnodes                                                           2.5ms / 4.5ms / 4.95ms
cilium_k8s_client_api_latency_time_seconds                               method=GET path=/apis/cilium.io/v2/namespaces/{namespace}/ciliumendpoints/{name}                         2.5ms / 4.5ms / 4.95ms
cilium_k8s_client_api_latency_time_seconds                               method=GET path=/apis/coordination.k8s.io/v1/namespaces/{namespace}/leases                               2.5ms / 4.5ms / 4.95ms
cilium_k8s_client_api_latency_time_seconds                               method=GET path=/apis/discovery.k8s.io/v1/endpointslices                                                 2.5ms / 4.5ms / 4.95ms
cilium_k8s_client_api_latency_time_seconds                               method=GET path=/apis/networking.k8s.io/v1/networkpolicies                                               2.5ms / 4.5ms / 4.95ms
cilium_k8s_client_api_latency_time_seconds                               method=GET path=/healthz                                                                                 2.5ms / 4.5ms / 4.95ms
cilium_k8s_client_api_latency_time_seconds                               method=GET path=/version                                                                                 2.5ms / 4.5ms / 4.95ms
cilium_k8s_client_api_latency_time_seconds                               method=PUT path=/apis/cilium.io/v2/ciliumnodes/{name}                                                    7.5ms / 9.5ms / 9.95ms
cilium_k8s_client_rate_limiter_duration_seconds                          method=GET path=/api/v1/namespaces                                                                       2.5ms / 4.5ms / 4.95ms
cilium_k8s_client_rate_limiter_duration_seconds                          method=GET path=/api/v1/namespaces/{namespace}/configmaps                                                2.5ms / 4.5ms / 4.95ms
cilium_k8s_client_rate_limiter_duration_seconds                          method=GET path=/api/v1/namespaces/{namespace}/secrets                                                   2.5ms / 4.5ms / 4.95ms
cilium_k8s_client_rate_limiter_duration_seconds                          method=GET path=/api/v1/namespaces/{name}                                                                2.5ms / 4.5ms / 4.95ms
cilium_k8s_client_rate_limiter_duration_seconds                          method=GET path=/api/v1/nodes                                                                            2.5ms / 4.5ms / 4.95ms
cilium_k8s_client_rate_limiter_duration_seconds                          method=GET path=/api/v1/pods                                                                             2.5ms / 4.5ms / 4.95ms
cilium_k8s_client_rate_limiter_duration_seconds                          method=GET path=/api/v1/services                                                                         2.5ms / 4.5ms / 4.95ms
cilium_k8s_client_rate_limiter_duration_seconds                          method=GET path=/apis/apiextensions.k8s.io/v1/customresourcedefinitions                                  2.5ms / 4.5ms / 4.95ms
cilium_k8s_client_rate_limiter_duration_seconds                          method=GET path=/apis/cilium.io/v2/ciliumcidrgroups                                                      2.5ms / 4.5ms / 4.95ms
cilium_k8s_client_rate_limiter_duration_seconds                          method=GET path=/apis/cilium.io/v2/ciliumclusterwidenetworkpolicies                                      2.5ms / 4.5ms / 4.95ms
cilium_k8s_client_rate_limiter_duration_seconds                          method=GET path=/apis/cilium.io/v2/ciliumendpoints                                                       2.5ms / 4.5ms / 4.95ms
cilium_k8s_client_rate_limiter_duration_seconds                          method=GET path=/apis/cilium.io/v2/ciliumidentities                                                      2.5ms / 4.5ms / 4.95ms
cilium_k8s_client_rate_limiter_duration_seconds                          method=GET path=/apis/cilium.io/v2/ciliumlocalredirectpolicies                                           2.5ms / 4.5ms / 4.95ms
cilium_k8s_client_rate_limiter_duration_seconds                          method=GET path=/apis/cilium.io/v2/ciliumnetworkpolicies                                                 2.5ms / 4.5ms / 4.95ms
cilium_k8s_client_rate_limiter_duration_seconds                          method=GET path=/apis/cilium.io/v2/ciliumnodes                                                           2.5ms / 4.5ms / 4.95ms
cilium_k8s_client_rate_limiter_duration_seconds                          method=GET path=/apis/cilium.io/v2/namespaces/{namespace}/ciliumendpoints/{name}                         2.5ms / 4.5ms / 4.95ms
cilium_k8s_client_rate_limiter_duration_seconds                          method=GET path=/apis/coordination.k8s.io/v1/namespaces/{namespace}/leases                               2.5ms / 4.5ms / 4.95ms
cilium_k8s_client_rate_limiter_duration_seconds                          method=GET path=/apis/discovery.k8s.io/v1/endpointslices                                                 2.5ms / 4.5ms / 4.95ms
cilium_k8s_client_rate_limiter_duration_seconds                          method=GET path=/apis/networking.k8s.io/v1/networkpolicies                                               2.5ms / 4.5ms / 4.95ms
cilium_k8s_client_rate_limiter_duration_seconds                          method=GET path=/healthz                                                                                 2.5ms / 4.5ms / 4.95ms
cilium_k8s_client_rate_limiter_duration_seconds                          method=GET path=/version                                                                                 2.5ms / 4.5ms / 4.95ms
cilium_k8s_client_rate_limiter_duration_seconds                          method=PUT path=/apis/cilium.io/v2/ciliumnodes/{name}                                                    2.5ms / 4.5ms / 4.95ms
cilium_k8s_terminating_endpoints_events_total                                                                                                                                     0.000000
cilium_kubernetes_events_received_total                                  action=update equal=false scope=CiliumEndpoint valid=true                                                6.000000
cilium_kubernetes_events_received_total                                  action=update equal=false scope=CiliumNode valid=true                                                    3.000000
cilium_kubernetes_events_received_total                                  action=update equal=false scope=Endpoint valid=true                                                      11.000000
cilium_kubernetes_events_received_total                                  action=update equal=false scope=Node valid=true                                                          3.000000
cilium_kubernetes_events_received_total                                  action=update equal=false scope=Pod valid=true                                                           2.000000
cilium_kubernetes_events_received_total                                  action=update equal=false scope=Service valid=true                                                       7.000000
cilium_kubernetes_events_total                                           action=update scope=CiliumEndpoint status=success                                                        6.000000
cilium_kubernetes_events_total                                           action=update scope=CiliumNode status=success                                                            3.000000
cilium_kubernetes_events_total                                           action=update scope=Endpoint status=success                                                              33.000000
cilium_kubernetes_events_total                                           action=update scope=Node status=success                                                                  5.000000
cilium_kubernetes_events_total                                           action=update scope=Service status=success                                                               14.000000
cilium_nat_endpoint_max_connection                                       family=ipv4                                                                                              0.000275
cilium_nat_endpoint_max_connection                                       family=ipv6                                                                                              0.000000
cilium_node_health_connectivity_latency_seconds                          address_type=primary protocol=http source_cluster=default source_node_name=k8s-worker-n1 type=endpoint   1.75ms / 2.35ms / 2.485ms
cilium_node_health_connectivity_latency_seconds                          address_type=primary protocol=http source_cluster=default source_node_name=k8s-worker-n1 type=node       1.5ms / 2.3ms / 2.48ms
cilium_node_health_connectivity_latency_seconds                          address_type=primary protocol=icmp source_cluster=default source_node_name=k8s-worker-n1 type=endpoint   500µs / 900µs / 990µs
cilium_node_health_connectivity_latency_seconds                          address_type=primary protocol=icmp source_cluster=default source_node_name=k8s-worker-n1 type=node       500µs / 900µs / 990µs
cilium_node_health_connectivity_status                                   source_cluster=default source_node_name=k8s-worker-n1 status=reachable type=endpoint                     1.000000
cilium_node_health_connectivity_status                                   source_cluster=default source_node_name=k8s-worker-n1 status=reachable type=node                         2.000000
cilium_node_health_connectivity_status                                   source_cluster=default source_node_name=k8s-worker-n1 status=unknown type=endpoint                       0.000000
cilium_node_health_connectivity_status                                   source_cluster=default source_node_name=k8s-worker-n1 status=unknown type=node                           0.000000
cilium_node_health_connectivity_status                                   source_cluster=default source_node_name=k8s-worker-n1 status=unreachable type=endpoint                   1.000000
cilium_node_health_connectivity_status                                   source_cluster=default source_node_name=k8s-worker-n1 status=unreachable type=node                       0.000000
cilium_nodes_all_datapath_validations_total                                                                                                                                       4.000000
cilium_nodes_all_events_received_total                                   event_type=add source=custom-resource                                                                    1.000000
cilium_nodes_all_events_received_total                                   event_type=add source=local                                                                              1.000000
cilium_nodes_all_events_received_total                                   event_type=delete source=restored                                                                        1.000000
cilium_nodes_all_num                                                                                                                                                              1.000000
cilium_policy                                                                                                                                                                     0.000000
cilium_policy_change_total                                               outcome=failure                                                                                          0.000000
cilium_policy_change_total                                               outcome=success                                                                                          1.000000
cilium_policy_endpoint_enforcement_status                                enforcement=audit-both                                                                                   0.000000
cilium_policy_endpoint_enforcement_status                                enforcement=audit-egress                                                                                 0.000000
cilium_policy_endpoint_enforcement_status                                enforcement=audit-ingress                                                                                0.000000
cilium_policy_endpoint_enforcement_status                                enforcement=both                                                                                         0.000000
cilium_policy_endpoint_enforcement_status                                enforcement=egress                                                                                       0.000000
cilium_policy_endpoint_enforcement_status                                enforcement=ingress                                                                                      0.000000
cilium_policy_endpoint_enforcement_status                                enforcement=none                                                                                         5.000000
cilium_policy_implementation_delay                                       source=api                                                                                               0 / 0 / 0
cilium_policy_implementation_delay                                       source=custom-resource                                                                                   0 / 0 / 0
cilium_policy_implementation_delay                                       source=k8s                                                                                               0 / 0 / 0
cilium_policy_incremental_update_duration                                scope=global                                                                                             550µ / 910µ / 991µ
cilium_policy_l7_total                                                   proxy_type=envoy rule=denied                                                                             0.000000
cilium_policy_l7_total                                                   proxy_type=envoy rule=forwarded                                                                          0.000000
cilium_policy_l7_total                                                   proxy_type=envoy rule=parse_errors                                                                       0.000000
cilium_policy_l7_total                                                   proxy_type=envoy rule=received                                                                           0.000000
cilium_policy_l7_total                                                   proxy_type=fqdn rule=denied                                                                              0.000000
cilium_policy_l7_total                                                   proxy_type=fqdn rule=forwarded                                                                           0.000000
cilium_policy_l7_total                                                   proxy_type=fqdn rule=parse_errors                                                                        0.000000
cilium_policy_l7_total                                                   proxy_type=fqdn rule=received                                                                            0.000000
cilium_policy_max_revision                                                                                                                                                        0.000000
cilium_policy_selector_match_count_max                                   class=cluster                                                                                            0.000000
cilium_policy_selector_match_count_max                                   class=fqdn                                                                                               0.000000
cilium_policy_selector_match_count_max                                   class=other                                                                                              0.000000
cilium_policy_selector_match_count_max                                   class=world                                                                                              0.000000
cilium_process_cpu_seconds_total                                                                                                                                                  13.460000
cilium_process_max_fds                                                                                                                                                            1048576.000000
cilium_process_network_receive_bytes_total                                                                                                                                        622925101.000000
cilium_process_network_transmit_bytes_total                                                                                                                                       156477396.000000
cilium_process_open_fds                                                                                                                                                           96.000000
cilium_process_resident_memory_bytes                                                                                                                                              185733120.000000
cilium_process_start_time_seconds                                                                                                                                                 1754230923.560000
cilium_process_virtual_memory_bytes                                                                                                                                               1463930880.000000
cilium_process_virtual_memory_max_bytes                                                                                                                                           18446744073709551616.000000
cilium_subprocess_start_total                                            subsystem=cilium-health                                                                                  1.000000
cilium_unreachable_health_endpoints                                                                                                                                               1.000000
cilium_unreachable_nodes                                                                                                                                                          0.000000
cilium_version                                                           arch=linux/amd64 revision=274205f0 version=1.18.0                                                        0.000000
go_gc_duration_seconds                                                                                                                                                            p0(127µs) p25(175.5µs) p50(189.8µs) p75(207.3µs) p100(343.8µs)
go_gc_gogc_percent                                                                                                                                                                100.000000
go_gc_gomemlimit_bytes                                                                                                                                                            16659578880.000000
go_goroutines                                                                                                                                                                     427.000000
go_info                                                                  version=go1.24.5                                                                                         1.000000
go_memstats_alloc_bytes                                                                                                                                                           59283384.000000
go_memstats_alloc_bytes_total                                                                                                                                                     252975408.000000
go_memstats_buck_hash_sys_bytes                                                                                                                                                   1690640.000000
go_memstats_frees_total                                                                                                                                                           2998935.000000
go_memstats_gc_sys_bytes                                                                                                                                                          4491224.000000
go_memstats_heap_alloc_bytes                                                                                                                                                      59283384.000000
go_memstats_heap_idle_bytes                                                                                                                                                       12255232.000000
go_memstats_heap_inuse_bytes                                                                                                                                                      71303168.000000
go_memstats_heap_objects                                                                                                                                                          369025.000000
go_memstats_heap_released_bytes                                                                                                                                                   1982464.000000
go_memstats_heap_sys_bytes                                                                                                                                                        83558400.000000
go_memstats_last_gc_time_seconds                                                                                                                                                  1754231050.413842
go_memstats_mallocs_total                                                                                                                                                         3367960.000000
go_memstats_mcache_inuse_bytes                                                                                                                                                    12080.000000
go_memstats_mcache_sys_bytes                                                                                                                                                      15704.000000
go_memstats_mspan_inuse_bytes                                                                                                                                                     982240.000000
go_memstats_mspan_sys_bytes                                                                                                                                                       1109760.000000
go_memstats_next_gc_bytes                                                                                                                                                         80848322.000000
go_memstats_other_sys_bytes                                                                                                                                                       1850502.000000
go_memstats_stack_inuse_bytes                                                                                                                                                     4521984.000000
go_memstats_stack_sys_bytes                                                                                                                                                       4521984.000000
go_memstats_sys_bytes                                                                                                                                                             97238214.000000
go_sched_gomaxprocs_threads                                                                                                                                                       10.000000
go_sched_latencies_seconds                                                                                                                                                        23.83µs / 72.21µs / 499.4µs
go_threads                                                                                                                                                                        22.000000

