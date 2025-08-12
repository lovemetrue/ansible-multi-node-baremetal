KVStore:                Disabled   
Kubernetes:             Ok         1.32 (v1.32.7) [linux/amd64]
Kubernetes APIs:        ["EndpointSliceOrEndpoint", "cilium/v2::CiliumCIDRGroup", "cilium/v2::CiliumClusterwideNetworkPolicy", "cilium/v2::CiliumEndpoint", "cilium/v2::CiliumNetworkPolicy", "cilium/v2::CiliumNode", "core/v1::Pods", "networking.k8s.io/v1::NetworkPolicy"]
KubeProxyReplacement:   True   [ens18   91.217.196.189 fe80::be24:11ff:fe57:4efb (Direct Routing)]
Host firewall:          Disabled
SRv6:                   Disabled
CNI Chaining:           none
CNI Config file:        successfully wrote CNI configuration file to /host/etc/cni/net.d/05-cilium.conflist
Cilium:                 Ok   1.18.0 (v1.18.0-274205f0)
NodeMonitor:            Listening for events on 8 CPUs with 64x4096 of shared memory
Cilium health daemon:   Ok   
IPAM:                   IPv4: 5/254 allocated from 10.0.0.0/24, 
Allocated addresses:
  10.0.0.124 (router)
  10.0.0.203 (health)
  10.0.0.220 (kube-system/coredns-54558b56c7-zth5g [restored])
  10.0.0.236 (default/dnsutils [restored])
  10.0.0.43 (kube-system/hubble-relay-6b7b5877f4-vfr4c [restored])
IPv4 BIG TCP:           Disabled
IPv6 BIG TCP:           Disabled
BandwidthManager:       Disabled
Routing:                Network: Tunnel [vxlan]   Host: Legacy
Attach Mode:            Legacy TC
Device Mode:            veth
Masquerading:           IPTables [IPv4: Enabled, IPv6: Disabled]
Clock Source for BPF:   ktime
Controller Status:      35/35 healthy
  Name                                                       Last success   Last error   Count   Message
  cilium-health-ep                                           58s ago        never        0       no error   
  ct-map-pressure                                            29s ago        never        0       no error   
  daemon-validate-config                                     57s ago        never        0       no error   
  endpoint-274-regeneration-recovery                         never          never        0       no error   
  endpoint-2838-regeneration-recovery                        never          never        0       no error   
  endpoint-33-regeneration-recovery                          never          never        0       no error   
  endpoint-342-regeneration-recovery                         never          never        0       no error   
  endpoint-398-regeneration-recovery                         never          never        0       no error   
  endpoint-gc                                                3m1s ago       never        0       no error   
  endpoint-periodic-regeneration                             1m1s ago       never        0       no error   
  ipcache-inject-labels                                      59s ago        never        0       no error   
  k8s-heartbeat                                              31s ago        never        0       no error   
  proxy-ports-checkpoint                                     2m59s ago      never        0       no error   
  resolve-identity-2838                                      2m58s ago      never        0       no error   
  resolve-labels-/                                           2m59s ago      never        0       no error   
  resolve-labels-default/dnsutils                            2m52s ago      never        0       no error   
  resolve-labels-kube-system/coredns-54558b56c7-zth5g        2m52s ago      never        0       no error   
  resolve-labels-kube-system/hubble-relay-6b7b5877f4-vfr4c   2m52s ago      never        0       no error   
  restoring-ep-identity (274)                                2m59s ago      never        0       no error   
  restoring-ep-identity (33)                                 2m59s ago      never        0       no error   
  restoring-ep-identity (342)                                2m59s ago      never        0       no error   
  restoring-ep-identity (398)                                2m59s ago      never        0       no error   
  sync-policymap-274                                         2m52s ago      never        0       no error   
  sync-policymap-2838                                        2m52s ago      never        0       no error   
  sync-policymap-33                                          2m52s ago      never        0       no error   
  sync-policymap-342                                         2m52s ago      never        0       no error   
  sync-policymap-398                                         2m52s ago      never        0       no error   
  sync-to-k8s-ciliumendpoint (274)                           9s ago         never        0       no error   
  sync-to-k8s-ciliumendpoint (33)                            9s ago         never        0       no error   
  sync-to-k8s-ciliumendpoint (398)                           9s ago         never        0       no error   
  sync-utime                                                 59s ago        never        0       no error   
  waiting-initial-global-identities-ep (274)                 2m59s ago      never        0       no error   
  waiting-initial-global-identities-ep (33)                  2m59s ago      never        0       no error   
  waiting-initial-global-identities-ep (398)                 2m59s ago      never        0       no error   
  write-cni-file                                             3m1s ago       never        0       no error   
Proxy Status:            OK, ip 10.0.0.124, 0 redirects active on ports 10000-20000, Envoy: external
Global Identity Range:   min 256, max 65535
Hubble:                  Ok   Current/Max Flows: 1962/4095 (47.91%), Flows/s: 11.07   Metrics: Disabled
KubeProxyReplacement Details:
  Status:               True
  Socket LB:            Enabled
  Socket LB Tracing:    Enabled
  Socket LB Coverage:   Full
  Devices:              ens18   91.217.196.189 fe80::be24:11ff:fe57:4efb (Direct Routing)
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
  Non-TCP connection tracking   65536
  TCP connection tracking       131072
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
  NAT                           131072
  Neighbor table                131072
  Endpoint policy               16384
  Policy stats                  65536
  Session affinity              65536
  Sock reverse NAT              65536
Encryption:       Disabled        
Cluster health:   1/2 reachable   (2025-08-03T14:23:49Z)   (Probe interval: 1m36.566274746s)
Name              IP              Node                     Endpoints
  k8s-master-n1 (localhost):
    Host connectivity to 91.217.196.189:
      ICMP to stack:   OK, RTT=145.787µs   (Last probed: 2025-08-03T14:23:01Z)
      HTTP to agent:   OK, RTT=844.698µs   (Last probed: 2025-08-03T14:23:01Z)
    Endpoint connectivity to 10.0.0.203:
      ICMP to stack:   OK, RTT=203.847µs   (Last probed: 2025-08-03T14:23:25Z)
      HTTP to agent:   OK, RTT=511.428µs   (Last probed: 2025-08-03T14:23:25Z)
  k8s-worker-n1:
    Host connectivity to 91.217.196.183:
      ICMP to stack:   OK, RTT=518.144µs   (Last probed: 2025-08-03T14:23:49Z)
      HTTP to agent:   OK, RTT=988.255µs   (Last probed: 2025-08-03T14:23:49Z)
    Endpoint connectivity to 10.0.1.237:
      ICMP to stack:   Connection timed out                                                                                             (Last probed: 2025-08-03T14:22:47Z)
      HTTP to agent:   Get "http://10.0.1.237:4240/hello": context deadline exceeded (Client.Timeout exceeded while awaiting headers)   (Last probed: 2025-08-03T14:22:47Z)
Modules Health:                                                                                                                         agent
                                                                                                                                        ├── controlplane
                                                                                                                                        │   ├── auth
                                                                                                                                        │   │   ├── observer-job-auth-gc-identity-events            [OK] Primed (2m59s, x1)
                                                                                                                                        │   │   ├── observer-job-auth-request-authentication        [OK] Primed (2m59s, x1)
                                                                                                                                        │   │   └── timer-job-auth-gc-cleanup                       [OK] Primed (2m59s, x1)
                                                                                                                                        │   ├── bgp-control-plane
                                                                                                                                        │   │   ├── job-diffstore-events                            [OK] Running (3m1s, x2)
                                                                                                                                        │   │   ├── observer-job-default-gateway-route-change-tracker    [OK] Primed (3m1s, x1)
                                                                                                                                        │   │   └── observer-job-device-change-device-change-tracker    [OK] Primed (3m1s, x1)
                                                                                                                                        │   ├── cilium-agent-dynamic-config
                                                                                                                                        │   │   └── job-k8s-reflector-cilium-configs-cm-cilium-config-kube-system    [OK] 144 upserted, 0 deleted, 144 total objects (2m59s, x1)
                                                                                                                                        │   ├── ciliumenvoyconfig
                                                                                                                                        │   │   ├── job-reconcile                                   [OK] OK, 0 object(s) (2m59s, x3)
                                                                                                                                        │   │   ├── job-refresh                                     [OK] Next refresh in 30m0s (2m59s, x1)
                                                                                                                                        │   │   └── observer-job-node-labels                        [OK] Primed (2m59s, x1)
                                                                                                                                        │   ├── config-drift-checker
                                                                                                                                        │   │   └── job-drift-checker                               [OK] Running (2m59s, x1)
                                                                                                                                        │   ├── daemon
                                                                                                                                        │   │   ├──                                                 [OK] daemon-validate-config (57s, x3)
                                                                                                                                        │   │   └── job-sync-hostips                                [OK] Synchronized (59s, x3)
                                                                                                                                        │   ├── dynamic-lifecycle-manager
                                                                                                                                        │   │   ├── job-reconcile                                   [OK] OK, 0 object(s) (2m59s, x2)
                                                                                                                                        │   │   └── job-refresh                                     [OK] Next refresh in 30m0s (2m59s, x1)
                                                                                                                                        │   ├── enabled-features
                                                                                                                                        │   │   └── job-update-config-metric                        [STOPPED] Waiting for agent config (2m59s, x1)
                                                                                                                                        │   ├── endpoint-api
                                                                                                                                        │   │   ├── job-cni-deletion-queue                          [STOPPED] Running (3m1s, x1)
                                                                                                                                        │   │   └── job-unlock-lockfile                             [STOPPED] Running (2m59s, x1)
                                                                                                                                        │   ├── endpoint-manager
                                                                                                                                        │   │   ├── cilium-endpoint-274 (kube-system/hubble-relay-6b7b5877f4-vfr4c)
                                                                                                                                        │   │   │   ├── cep-k8s-sync                                [OK] sync-to-k8s-ciliumendpoint (274) (9s, x18)
                                                                                                                                        │   │   │   ├── datapath-regenerate                         [OK] Endpoint regeneration successful (61s, x3)
                                                                                                                                        │   │   │   └── policymap-sync                              [OK] sync-policymap-274 (2m52s, x1)
                                                                                                                                        │   │   ├── cilium-endpoint-2838 (/)
                                                                                                                                        │   │   │   ├── datapath-regenerate                         [OK] Endpoint regeneration successful (61s, x3)
                                                                                                                                        │   │   │   └── policymap-sync                              [OK] sync-policymap-2838 (2m52s, x1)
                                                                                                                                        │   │   ├── cilium-endpoint-33 (kube-system/coredns-54558b56c7-zth5g)
                                                                                                                                        │   │   │   ├── cep-k8s-sync                                [OK] sync-to-k8s-ciliumendpoint (33) (9s, x18)
                                                                                                                                        │   │   │   ├── datapath-regenerate                         [OK] Endpoint regeneration successful (61s, x3)
                                                                                                                                        │   │   │   └── policymap-sync                              [OK] sync-policymap-33 (2m52s, x1)
                                                                                                                                        │   │   ├── cilium-endpoint-342 (/)
                                                                                                                                        │   │   │   ├── datapath-regenerate                         [OK] Endpoint regeneration successful (61s, x3)
                                                                                                                                        │   │   │   └── policymap-sync                              [OK] sync-policymap-342 (2m52s, x1)
                                                                                                                                        │   │   ├── cilium-endpoint-398 (default/dnsutils)
                                                                                                                                        │   │   │   ├── cep-k8s-sync                                [OK] sync-to-k8s-ciliumendpoint (398) (9s, x18)
                                                                                                                                        │   │   │   ├── datapath-regenerate                         [OK] Endpoint regeneration successful (61s, x3)
                                                                                                                                        │   │   │   └── policymap-sync                              [OK] sync-policymap-398 (2m52s, x1)
                                                                                                                                        │   │   ├── endpoint-gc                                     [OK] endpoint-gc (3m1s, x1)
                                                                                                                                        │   │   └── job-namespace-updater                           [OK] Running (2m59s, x1)
                                                                                                                                        │   ├── envoy-proxy
                                                                                                                                        │   │   ├── observer-job-k8s-secrets-resource-events-cilium-secrets    [OK] Primed (2m59s, x1)
                                                                                                                                        │   │   └── timer-job-version-check                         [OK] OK (2.954932ms) (59s, x1)
                                                                                                                                        │   ├── ep-bpf-prog-watchdog
                                                                                                                                        │   │   └── timer-job-ep-bpf-prog-watchdog                  [OK] OK (1.420619ms) (29s, x1)
                                                                                                                                        │   ├── fqdn
                                                                                                                                        │   │   ├── dns-proxy
                                                                                                                                        │   │   │   └── job-proxy-bootstrapper                      [STOPPED] DNS proxy successfully initialized on port 37393 (2m59s, x1)
                                                                                                                                        │   │   └── namemanager
                                                                                                                                        │   │       ├── job-remove-restored-prefixes                [STOPPED] Running (3m1s, x1)
                                                                                                                                        │   │       ├── observer-job-preallocate                    [OK] Primed (3m1s, x1)
                                                                                                                                        │   │       └── timer-job-dns-garbage-collector-job         [OK] OK (52.215µs) (1s, x1)
                                                                                                                                        │   ├── hubble
                                                                                                                                        │   │   ├── job-certloader-server-tls                       [STOPPED] Running (2m59s, x1)
                                                                                                                                        │   │   └── job-hubble                                      [STOPPED] Running (2m59s, x1)
                                                                                                                                        │   ├── k8s-tables
                                                                                                                                        │   │   ├── job-k8s-reflector-k8s-namespaces-daemon-k8s     [OK] 5 upserted, 0 deleted, 5 total objects (3m1s, x1)
                                                                                                                                        │   │   └── job-k8s-reflector-k8s-pods-daemon-k8s           [OK] 1 upserted, 0 deleted, 10 total objects (2m16s, x5)
                                                                                                                                        │   ├── l2-announcer
                                                                                                                                        │   │   └── job-l2-announcer-lease-gc                       [STOPPED] Running (2m59s, x1)
                                                                                                                                        │   ├── loadbalancer-healthserver
                                                                                                                                        │   │   └── job-control-loop                                [OK] 0 health servers running (2m15s, x15)
                                                                                                                                        │   ├── loadbalancer-maps
                                                                                                                                        │   │   └── timer-job-pressure-metrics-reporter             [OK] Primed (2m59s, x1)
                                                                                                                                        │   ├── loadbalancer-reconciler
                                                                                                                                        │   │   ├── job-reconcile                                   [OK] OK, 8 object(s) (2m16s, x12)
                                                                                                                                        │   │   ├── job-refresh                                     [OK] Next refresh in 29m59.99895497s (2m59s, x1)
                                                                                                                                        │   │   ├── job-start-reconciler                            [STOPPED] Started (2m59s, x1)
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
                                                                                                                                        │   │   ├── job-reconcile                                   [OK] OK, 3 object(s) (2m59s, x2)
                                                                                                                                        │   │   └── job-refresh                                     [OK] Next refresh in 30m0s (2m59s, x1)
                                                                                                                                        │   ├── nat-stats
                                                                                                                                        │   │   └── timer-job-nat-stats                             [OK] OK (559.534µs) (29s, x1)
                                                                                                                                        │   ├── node-manager
                                                                                                                                        │   │   ├── job-backgroundSync                              [OK] Node validation successful (55s, x2)
                                                                                                                                        │   │   ├── node-checkpoint-writer                          [OK] node checkpoint written (61s, x3)
                                                                                                                                        │   │   ├── nodes-add                                       [OK] Node adds successful (2m59s, x2)
                                                                                                                                        │   │   └── nodes-delete                                    [OK] Node deletions successful (3m1s, x1)
                                                                                                                                        │   ├── policy
                                                                                                                                        │   │   ├── observer-job-policy-importer                    [OK] Primed (3m1s, x1)
                                                                                                                                        │   │   └── timer-job-id-alloc-update-policy-maps           [OK] OK (87.928µs) (2m59s, x1)
                                                                                                                                        │   ├── stale-endpoint-cleanup
                                                                                                                                        │   │   └── job-endpoint-cleanup                            [STOPPED] Running (2m59s, x1)
                                                                                                                                        │   └── status
                                                                                                                                        │       └── job-probes                                      [OK] Running (2m59s, x1)
                                                                                                                                        ├── datapath
                                                                                                                                        │   ├── agent-liveness-updater
                                                                                                                                        │   │   └── timer-job-agent-liveness-updater                [OK] OK (44.941µs) (0s, x1)
                                                                                                                                        │   ├── iptables
                                                                                                                                        │   │   ├── ipset
                                                                                                                                        │   │   │   ├── job-ipset-init-finalizer                    [STOPPED] Running (3m1s, x1)
                                                                                                                                        │   │   │   ├── job-reconcile                               [OK] OK, 0 object(s) (3m1s, x3)
                                                                                                                                        │   │   │   └── job-refresh                                 [OK] Next refresh in 30m0s (3m1s, x1)
                                                                                                                                        │   │   └── job-iptables-reconciliation-loop                [OK] iptables rules update completed (2m59s, x1)
                                                                                                                                        │   ├── l2-responder
                                                                                                                                        │   │   └── job-l2-responder-reconciler                     [OK] Running (2m59s, x1)
                                                                                                                                        │   ├── link-cache
                                                                                                                                        │   │   └── timer-job-sync                                  [OK] OK (464.057µs) (14s, x1)
                                                                                                                                        │   ├── maps
                                                                                                                                        │   │   └── bwmap
                                                                                                                                        │   │       └── timer-job-pressure-metric-throttle          [OK] OK (1.86µs) (29s, x1)
                                                                                                                                        │   ├── mtu
                                                                                                                                        │   │   ├── job-endpoint-mtu-updater                        [OK] Endpoint MTU updated (2m59s, x1)
                                                                                                                                        │   │   └── job-mtu-updater                                 [OK] MTU updated (1500) (3m1s, x1)
                                                                                                                                        │   ├── node-address
                                                                                                                                        │   │   └── job-node-address-update                         [OK] Running (3m1s, x1)
                                                                                                                                        │   ├── orchestrator
                                                                                                                                        │   │   └── job-reinitialize                                [OK] OK (2m52s, x1)
                                                                                                                                        │   └── sysctl
                                                                                                                                        │       ├── job-reconcile                                   [OK] OK, 20 object(s) (2m59s, x3)
                                                                                                                                        │       └── job-refresh                                     [OK] Next refresh in 10m0s (3m1s, x1)
                                                                                                                                        └── infra
                                                                                                                                            ├── agent-healthz
                                                                                                                                            │   └── job-agent-healthz-server-ipv4                   [OK] Running (2m59s, x1)
                                                                                                                                            ├── k8s-synced-crdsync
                                                                                                                                            │   └── job-sync-crds                                   [STOPPED] Running (3m1s, x1)
                                                                                                                                            ├── metrics
                                                                                                                                            │   ├── job-collect                                     [OK] Sampled 24 metrics in 19.952846ms, next collection at 2025-08-03 14:27:06.698007973 +0000 UTC m=+302.584490014 (2m59s, x1)
                                                                                                                                            │   └── timer-job-cleanup                               [OK] Primed (2m59s, x1)
                                                                                                                                            ├── service-resolver
                                                                                                                                            │   └── job-service-reloader-initializer                [OK] Running (3m1s, x1)
                                                                                                                                            └── shell
                                                                                                                                                └── job-listener                                    [OK] Listening on /var/run/cilium/shell.sock (2m59s, x1)
                                                                                                                                        

