KVStore:                Disabled   
Kubernetes:             Ok         1.32 (v1.32.7) [linux/amd64]
Kubernetes APIs:        ["EndpointSliceOrEndpoint", "cilium/v2::CiliumCIDRGroup", "cilium/v2::CiliumClusterwideNetworkPolicy", "cilium/v2::CiliumEndpoint", "cilium/v2::CiliumNetworkPolicy", "cilium/v2::CiliumNode", "core/v1::Pods", "networking.k8s.io/v1::NetworkPolicy"]
KubeProxyReplacement:   True   [ens18   91.217.196.183 fe80::be24:11ff:fe70:1081 (Direct Routing)]
Host firewall:          Disabled
SRv6:                   Disabled
CNI Chaining:           none
CNI Config file:        successfully wrote CNI configuration file to /host/etc/cni/net.d/05-cilium.conflist
Cilium:                 Ok   1.18.0 (v1.18.0-274205f0)
NodeMonitor:            Listening for events on 10 CPUs with 64x4096 of shared memory
Cilium health daemon:   Ok   
IPAM:                   IPv4: 5/254 allocated from 10.0.1.0/24, 
Allocated addresses:
  10.0.1.138 (router)
  10.0.1.156 (kube-system/metrics-server-7f4c46496-hwgxn [restored])
  10.0.1.184 (kube-system/coredns-54558b56c7-tsmph [restored])
  10.0.1.237 (health)
  10.0.1.78 (kube-system/hubble-ui-655f947f96-bdmvs [restored])
IPv4 BIG TCP:           Disabled
IPv6 BIG TCP:           Disabled
BandwidthManager:       Disabled
Routing:                Network: Tunnel [vxlan]   Host: Legacy
Attach Mode:            Legacy TC
Device Mode:            veth
Masquerading:           IPTables [IPv4: Enabled, IPv6: Disabled]
Clock Source for BPF:   ktime
Controller Status:      35/35 healthy
  Name                                                        Last success   Last error   Count   Message
  cilium-health-ep                                            57s ago        never        0       no error   
  ct-map-pressure                                             28s ago        never        0       no error   
  daemon-validate-config                                      56s ago        never        0       no error   
  endpoint-1178-regeneration-recovery                         never          never        0       no error   
  endpoint-3132-regeneration-recovery                         never          never        0       no error   
  endpoint-3788-regeneration-recovery                         never          never        0       no error   
  endpoint-3911-regeneration-recovery                         never          never        0       no error   
  endpoint-482-regeneration-recovery                          never          never        0       no error   
  endpoint-gc                                                 3m0s ago       never        0       no error   
  endpoint-periodic-regeneration                              1m0s ago       never        0       no error   
  ipcache-inject-labels                                       59s ago        never        0       no error   
  k8s-heartbeat                                               30s ago        never        0       no error   
  proxy-ports-checkpoint                                      2m59s ago      never        0       no error   
  resolve-identity-3911                                       2m57s ago      never        0       no error   
  resolve-labels-/                                            2m58s ago      never        0       no error   
  resolve-labels-kube-system/coredns-54558b56c7-tsmph         2m50s ago      never        0       no error   
  resolve-labels-kube-system/hubble-ui-655f947f96-bdmvs       2m50s ago      never        0       no error   
  resolve-labels-kube-system/metrics-server-7f4c46496-hwgxn   2m50s ago      never        0       no error   
  restoring-ep-identity (1178)                                2m58s ago      never        0       no error   
  restoring-ep-identity (3132)                                2m58s ago      never        0       no error   
  restoring-ep-identity (3788)                                2m58s ago      never        0       no error   
  restoring-ep-identity (482)                                 2m58s ago      never        0       no error   
  sync-policymap-1178                                         2m50s ago      never        0       no error   
  sync-policymap-3132                                         2m50s ago      never        0       no error   
  sync-policymap-3788                                         2m46s ago      never        0       no error   
  sync-policymap-3911                                         2m50s ago      never        0       no error   
  sync-policymap-482                                          2m50s ago      never        0       no error   
  sync-to-k8s-ciliumendpoint (1178)                           8s ago         never        0       no error   
  sync-to-k8s-ciliumendpoint (3132)                           8s ago         never        0       no error   
  sync-to-k8s-ciliumendpoint (482)                            8s ago         never        0       no error   
  sync-utime                                                  59s ago        never        0       no error   
  waiting-initial-global-identities-ep (1178)                 2m58s ago      never        0       no error   
  waiting-initial-global-identities-ep (3132)                 2m58s ago      never        0       no error   
  waiting-initial-global-identities-ep (482)                  2m58s ago      never        0       no error   
  write-cni-file                                              3m0s ago       never        0       no error   
Proxy Status:            OK, ip 10.0.1.138, 0 redirects active on ports 10000-20000, Envoy: external
Global Identity Range:   min 256, max 65535
Hubble:                  Ok   Current/Max Flows: 1611/4095 (39.34%), Flows/s: 9.06   Metrics: Disabled
KubeProxyReplacement Details:
  Status:               True
  Socket LB:            Enabled
  Socket LB Tracing:    Enabled
  Socket LB Coverage:   Full
  Devices:              ens18   91.217.196.183 fe80::be24:11ff:fe70:1081 (Direct Routing)
  Mode:                 SNAT
  Backend Selection:    Random
  Session Affinity:     Enabled
  NAT46/64 Support:     Disabled
  XDP Acceleration:     Disabled
  Services:
  - ClusterIP:      Enabled
  - NodePort:       Enabled (Range: 30000-32767) 
  - LoadBalancer:   Enabled 
  - externalIPs:    Enabled 
  - HostPort:       Enabled
  Annotations:
  - service.cilium.io/node
  - service.cilium.io/node-selector
  - service.cilium.io/proxy-delegation
  - service.cilium.io/src-ranges-policy
  - service.cilium.io/type
BPF Maps:   dynamic sizing: on (ratio: 0.002500)
  Name                          Size
  Auth                          524288
  Non-TCP connection tracking   73528
  TCP connection tracking       147056
  Endpoints                     65535
  IP cache                      512000
  IPv4 masquerading agent       16384
  IPv6 masquerading agent       16384
  IPv4 fragmentation            8192
  IPv4 service                  65536
  IPv6 service                  65536
  IPv4 service backend          65536
  IPv6 service backend          65536
  IPv4 service reverse NAT      65536
  IPv6 service reverse NAT      65536
  Metrics                       1024
  Ratelimit metrics             64
  NAT                           147056
  Neighbor table                147056
  Endpoint policy               16384
  Policy stats                  65530
  Session affinity              65536
  Sock reverse NAT              73528
Encryption:       Disabled        
Cluster health:   1/2 reachable   (2025-08-03T14:23:55Z)   (Probe interval: 1m36.566274746s)
Name              IP              Node                     Endpoints
  k8s-worker-n1 (localhost):
    Host connectivity to 91.217.196.183:
      ICMP to stack:   OK, RTT=152.724µs   (Last probed: 2025-08-03T14:23:55Z)
      HTTP to agent:   OK, RTT=782.048µs   (Last probed: 2025-08-03T14:23:55Z)
    Endpoint connectivity to 10.0.1.237:
      ICMP to stack:   OK, RTT=359.454µs    (Last probed: 2025-08-03T14:22:43Z)
      HTTP to agent:   OK, RTT=1.816261ms   (Last probed: 2025-08-03T14:22:43Z)
  k8s-master-n1:
    Host connectivity to 91.217.196.189:
      ICMP to stack:   OK, RTT=598.403µs    (Last probed: 2025-08-03T14:23:07Z)
      HTTP to agent:   OK, RTT=1.996945ms   (Last probed: 2025-08-03T14:23:07Z)
    Endpoint connectivity to 10.0.0.203:
      ICMP to stack:   Connection timed out                                                                                             (Last probed: 2025-08-03T14:23:41Z)
      HTTP to agent:   Get "http://10.0.0.203:4240/hello": context deadline exceeded (Client.Timeout exceeded while awaiting headers)   (Last probed: 2025-08-03T14:23:41Z)
Modules Health:                                                                                                                         agent
                                                                                                                                        ├── controlplane
                                                                                                                                        │   ├── auth
                                                                                                                                        │   │   ├── observer-job-auth-gc-identity-events            [OK] Primed (2m59s, x1)
                                                                                                                                        │   │   ├── observer-job-auth-request-authentication        [OK] Primed (2m59s, x1)
                                                                                                                                        │   │   └── timer-job-auth-gc-cleanup                       [OK] Primed (2m59s, x1)
                                                                                                                                        │   ├── bgp-control-plane
                                                                                                                                        │   │   ├── job-diffstore-events                            [OK] Running (3m, x2)
                                                                                                                                        │   │   ├── observer-job-default-gateway-route-change-tracker    [OK] Primed (3m, x1)
                                                                                                                                        │   │   └── observer-job-device-change-device-change-tracker    [OK] Primed (3m, x1)
                                                                                                                                        │   ├── cilium-agent-dynamic-config
                                                                                                                                        │   │   └── job-k8s-reflector-cilium-configs-cm-cilium-config-kube-system    [OK] 144 upserted, 0 deleted, 144 total objects (2m59s, x1)
                                                                                                                                        │   ├── ciliumenvoyconfig
                                                                                                                                        │   │   ├── job-reconcile                                   [OK] OK, 0 object(s) (2m59s, x3)
                                                                                                                                        │   │   ├── job-refresh                                     [OK] Next refresh in 30m0s (2m59s, x1)
                                                                                                                                        │   │   └── observer-job-node-labels                        [OK] Primed (2m59s, x1)
                                                                                                                                        │   ├── config-drift-checker
                                                                                                                                        │   │   └── job-drift-checker                               [OK] Running (2m59s, x1)
                                                                                                                                        │   ├── daemon
                                                                                                                                        │   │   ├──                                                 [OK] daemon-validate-config (56s, x3)
                                                                                                                                        │   │   └── job-sync-hostips                                [OK] Synchronized (59s, x3)
                                                                                                                                        │   ├── dynamic-lifecycle-manager
                                                                                                                                        │   │   ├── job-reconcile                                   [OK] OK, 0 object(s) (2m59s, x2)
                                                                                                                                        │   │   └── job-refresh                                     [OK] Next refresh in 30m0s (2m59s, x1)
                                                                                                                                        │   ├── enabled-features
                                                                                                                                        │   │   └── job-update-config-metric                        [STOPPED] Waiting for agent config (2m59s, x1)
                                                                                                                                        │   ├── endpoint-api
                                                                                                                                        │   │   ├── job-cni-deletion-queue                          [STOPPED] Running (3m, x1)
                                                                                                                                        │   │   └── job-unlock-lockfile                             [STOPPED] Running (2m59s, x1)
                                                                                                                                        │   ├── endpoint-manager
                                                                                                                                        │   │   ├── cilium-endpoint-1178 (kube-system/hubble-ui-655f947f96-bdmvs)
                                                                                                                                        │   │   │   ├── cep-k8s-sync                                [OK] sync-to-k8s-ciliumendpoint (1178) (8s, x18)
                                                                                                                                        │   │   │   ├── datapath-regenerate                         [OK] Endpoint regeneration successful (60s, x3)
                                                                                                                                        │   │   │   └── policymap-sync                              [OK] sync-policymap-1178 (2m50s, x1)
                                                                                                                                        │   │   ├── cilium-endpoint-3132 (kube-system/metrics-server-7f4c46496-hwgxn)
                                                                                                                                        │   │   │   ├── cep-k8s-sync                                [OK] sync-to-k8s-ciliumendpoint (3132) (8s, x18)
                                                                                                                                        │   │   │   ├── datapath-regenerate                         [OK] Endpoint regeneration successful (60s, x3)
                                                                                                                                        │   │   │   └── policymap-sync                              [OK] sync-policymap-3132 (2m50s, x1)
                                                                                                                                        │   │   ├── cilium-endpoint-3788 (/)
                                                                                                                                        │   │   │   ├── datapath-regenerate                         [OK] Endpoint regeneration successful (60s, x3)
                                                                                                                                        │   │   │   └── policymap-sync                              [OK] sync-policymap-3788 (2m46s, x1)
                                                                                                                                        │   │   ├── cilium-endpoint-3911 (/)
                                                                                                                                        │   │   │   ├── datapath-regenerate                         [OK] Endpoint regeneration successful (60s, x3)
                                                                                                                                        │   │   │   └── policymap-sync                              [OK] sync-policymap-3911 (2m50s, x1)
                                                                                                                                        │   │   ├── cilium-endpoint-482 (kube-system/coredns-54558b56c7-tsmph)
                                                                                                                                        │   │   │   ├── cep-k8s-sync                                [OK] sync-to-k8s-ciliumendpoint (482) (8s, x18)
                                                                                                                                        │   │   │   ├── datapath-regenerate                         [OK] Endpoint regeneration successful (60s, x3)
                                                                                                                                        │   │   │   └── policymap-sync                              [OK] sync-policymap-482 (2m50s, x1)
                                                                                                                                        │   │   ├── endpoint-gc                                     [OK] endpoint-gc (3m, x1)
                                                                                                                                        │   │   └── job-namespace-updater                           [OK] Running (2m59s, x1)
                                                                                                                                        │   ├── envoy-proxy
                                                                                                                                        │   │   ├── observer-job-k8s-secrets-resource-events-cilium-secrets    [OK] Primed (2m59s, x1)
                                                                                                                                        │   │   └── timer-job-version-check                         [OK] OK (3.301466ms) (59s, x1)
                                                                                                                                        │   ├── ep-bpf-prog-watchdog
                                                                                                                                        │   │   └── timer-job-ep-bpf-prog-watchdog                  [OK] OK (1.195738ms) (29s, x1)
                                                                                                                                        │   ├── fqdn
                                                                                                                                        │   │   ├── dns-proxy
                                                                                                                                        │   │   │   └── job-proxy-bootstrapper                      [STOPPED] DNS proxy successfully initialized on port 45265 (2m59s, x1)
                                                                                                                                        │   │   └── namemanager
                                                                                                                                        │   │       ├── job-remove-restored-prefixes                [STOPPED] Running (3m, x1)
                                                                                                                                        │   │       ├── observer-job-preallocate                    [OK] Primed (3m, x1)
                                                                                                                                        │   │       └── timer-job-dns-garbage-collector-job         [OK] OK (31.72µs) (0s, x1)
                                                                                                                                        │   ├── hubble
                                                                                                                                        │   │   ├── job-certloader-server-tls                       [STOPPED] Running (2m59s, x1)
                                                                                                                                        │   │   └── job-hubble                                      [STOPPED] Running (2m59s, x1)
                                                                                                                                        │   ├── k8s-tables
                                                                                                                                        │   │   ├── job-k8s-reflector-k8s-namespaces-daemon-k8s     [OK] 5 upserted, 0 deleted, 5 total objects (3m, x1)
                                                                                                                                        │   │   └── job-k8s-reflector-k8s-pods-daemon-k8s           [OK] 1 upserted, 0 deleted, 6 total objects (2m55s, x1)
                                                                                                                                        │   ├── l2-announcer
                                                                                                                                        │   │   └── job-l2-announcer-lease-gc                       [STOPPED] Running (2m59s, x1)
                                                                                                                                        │   ├── loadbalancer-healthserver
                                                                                                                                        │   │   └── job-control-loop                                [OK] 0 health servers running (2m15s, x14)
                                                                                                                                        │   ├── loadbalancer-maps
                                                                                                                                        │   │   └── timer-job-pressure-metrics-reporter             [OK] Primed (2m59s, x1)
                                                                                                                                        │   ├── loadbalancer-reconciler
                                                                                                                                        │   │   ├── job-reconcile                                   [OK] OK, 8 object(s) (2m16s, x13)
                                                                                                                                        │   │   ├── job-refresh                                     [OK] Next refresh in 29m59.99923958s (2m58s, x1)
                                                                                                                                        │   │   ├── job-start-reconciler                            [STOPPED] Started (2m58s, x1)
                                                                                                                                        │   │   └── socket-termination
                                                                                                                                        │   │       └── job-socket-termination                      [OK] Running (2m59s, x1)
                                                                                                                                        │   ├── loadbalancer-reflectors
                                                                                                                                        │   │   └── k8s-reflector
                                                                                                                                        │   │       ├── job-reflect-pods                            [OK] Running (2m59s, x1)
                                                                                                                                        │   │       └── job-reflect-services-endpoints              [OK] Running (2m59s, x1)
                                                                                                                                        │   ├── loadbalancer-writer
                                                                                                                                        │   │   └── job-node-addr-reconciler                        [OK] Running (2m59s, x1)
                                                                                                                                        │   ├── local-redirect-policies
                                                                                                                                        │   │   ├── job-controller                                  [OK] Running (2m59s, x1)
                                                                                                                                        │   │   ├── job-k8s-reflector-localredirectpolicies-lrps    [OK] 0 upserted, 0 deleted, 0 total objects (2m59s, x1)
                                                                                                                                        │   │   ├── job-reconcile                                   [OK] OK, 3 object(s) (2m58s, x2)
                                                                                                                                        │   │   └── job-refresh                                     [OK] Next refresh in 30m0s (2m59s, x1)
                                                                                                                                        │   ├── nat-stats
                                                                                                                                        │   │   └── timer-job-nat-stats                             [OK] OK (1.216633ms) (29s, x1)
                                                                                                                                        │   ├── node-manager
                                                                                                                                        │   │   ├── job-backgroundSync                              [OK] Node validation successful (54s, x2)
                                                                                                                                        │   │   ├── node-checkpoint-writer                          [OK] node checkpoint written (60s, x3)
                                                                                                                                        │   │   ├── nodes-add                                       [OK] Node adds successful (2m59s, x2)
                                                                                                                                        │   │   └── nodes-delete                                    [OK] Node deletions successful (3m, x1)
                                                                                                                                        │   ├── policy
                                                                                                                                        │   │   ├── observer-job-policy-importer                    [OK] Primed (3m, x1)
                                                                                                                                        │   │   └── timer-job-id-alloc-update-policy-maps           [OK] OK (74.981µs) (2m59s, x1)
                                                                                                                                        │   ├── stale-endpoint-cleanup
                                                                                                                                        │   │   └── job-endpoint-cleanup                            [STOPPED] Running (2m59s, x1)
                                                                                                                                        │   └── status
                                                                                                                                        │       └── job-probes                                      [OK] Running (2m59s, x1)
                                                                                                                                        ├── datapath
                                                                                                                                        │   ├── agent-liveness-updater
                                                                                                                                        │   │   └── timer-job-agent-liveness-updater                [OK] OK (78.694µs) (0s, x1)
                                                                                                                                        │   ├── iptables
                                                                                                                                        │   │   ├── ipset
                                                                                                                                        │   │   │   ├── job-ipset-init-finalizer                    [STOPPED] Running (3m, x1)
                                                                                                                                        │   │   │   ├── job-reconcile                               [OK] OK, 0 object(s) (3m, x3)
                                                                                                                                        │   │   │   └── job-refresh                                 [OK] Next refresh in 30m0s (3m, x1)
                                                                                                                                        │   │   └── job-iptables-reconciliation-loop                [OK] iptables rules update completed (2m59s, x1)
                                                                                                                                        │   ├── l2-responder
                                                                                                                                        │   │   └── job-l2-responder-reconciler                     [OK] Running (2m59s, x1)
                                                                                                                                        │   ├── link-cache
                                                                                                                                        │   │   └── timer-job-sync                                  [OK] OK (772.9µs) (14s, x1)
                                                                                                                                        │   ├── maps
                                                                                                                                        │   │   └── bwmap
                                                                                                                                        │   │       └── timer-job-pressure-metric-throttle          [OK] OK (3.35µs) (29s, x1)
                                                                                                                                        │   ├── mtu
                                                                                                                                        │   │   ├── job-endpoint-mtu-updater                        [OK] Endpoint MTU updated (2m59s, x1)
                                                                                                                                        │   │   └── job-mtu-updater                                 [OK] MTU updated (1500) (3m, x1)
                                                                                                                                        │   ├── node-address
                                                                                                                                        │   │   └── job-node-address-update                         [OK] Running (3m, x1)
                                                                                                                                        │   ├── orchestrator
                                                                                                                                        │   │   └── job-reinitialize                                [OK] OK (2m46s, x1)
                                                                                                                                        │   └── sysctl
                                                                                                                                        │       ├── job-reconcile                                   [OK] OK, 20 object(s) (2m58s, x3)
                                                                                                                                        │       └── job-refresh                                     [OK] Next refresh in 10m0s (3m, x1)
                                                                                                                                        └── infra
                                                                                                                                            ├── agent-healthz
                                                                                                                                            │   └── job-agent-healthz-server-ipv4                   [OK] Running (2m59s, x1)
                                                                                                                                            ├── k8s-synced-crdsync
                                                                                                                                            │   └── job-sync-crds                                   [STOPPED] Running (3m, x1)
                                                                                                                                            ├── metrics
                                                                                                                                            │   ├── job-collect                                     [OK] Sampled 24 metrics in 5.562426ms, next collection at 2025-08-03 14:27:07.040622718 +0000 UTC m=+302.582417948 (2m59s, x1)
                                                                                                                                            │   └── timer-job-cleanup                               [OK] Primed (2m59s, x1)
                                                                                                                                            ├── service-resolver
                                                                                                                                            │   └── job-service-reloader-initializer                [OK] Running (3m, x1)
                                                                                                                                            └── shell
                                                                                                                                                └── job-listener                                    [OK] Listening on /var/run/cilium/shell.sock (2m59s, x1)
                                                                                                                                        

