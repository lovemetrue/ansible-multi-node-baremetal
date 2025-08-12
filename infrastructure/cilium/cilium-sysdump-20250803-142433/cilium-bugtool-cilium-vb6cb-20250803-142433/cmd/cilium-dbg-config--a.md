#### Read-only configurations ####
ARPPingKernelManaged              : false
AddressScopeMax                   : 252
AgentHealthPort                   : 9879
AgentHealthRequireK8sConnectivity : true
AgentNotReadyNodeTaintKey         : node.cilium.io/agent-not-ready
AllocatorListTimeout              : 180000000000
AllowICMPFragNeeded               : true
AllowLocalhost                    : always
AnnotateK8sNode                   : false
AuthMapEntries                    : 524288
AutoCreateCiliumNodeResource      : true
BGPRouterIDAllocationIPPool       : 
BGPRouterIDAllocationMode         : default
BGPSecretsNamespace               : 
BPFCompileDebug                   : 
BPFConntrackAccounting            : false
BPFDistributedLRU                 : false
BPFEventsDefaultBurstLimit        : 0
BPFEventsDefaultRateLimit         : 0
BPFEventsDropEnabled              : true
BPFEventsPolicyVerdictEnabled     : true
BPFEventsTraceEnabled             : true
BPFMapEventBuffers                : <nil>
BPFMapsDynamicSizeRatio           : 0.0025
BPFRoot                           : /sys/fs/bpf
BPFSocketLBHostnsOnly             : false
BootIDFile                        : /proc/sys/kernel/random/boot_id
BpfDir                            : /var/lib/cilium/bpf
BypassIPAvailabilityUponRestore   : false
CGroupRoot                        : /run/cilium/cgroupv2
CTMapEntriesGlobalAny             : 73528
CTMapEntriesGlobalTCP             : 147056
CTMapEntriesTimeoutAny            : 60000000000
CTMapEntriesTimeoutFIN            : 10000000000
CTMapEntriesTimeoutSVCAny         : 60000000000
CTMapEntriesTimeoutSVCTCP         : 8000000000000
CTMapEntriesTimeoutSVCTCPGrace    : 60000000000
CTMapEntriesTimeoutSYN            : 60000000000
CTMapEntriesTimeoutTCP            : 8000000000000
CgroupPathMKE                     : 
CiliumIdentityMaxJitter           : 30000000000
ClockSource                       : 0
ClusterHealthPort                 : 4240
ClusterID                         : 0
ClusterMeshHealthPort             : 0
ClusterName                       : default
CompilerFlags                     : []
ConfigDir                         : /tmp/cilium/config-map
ConfigFile                        : 
ConnectivityProbeFrequencyRatio   : 0.5
ConntrackGCInterval               : 0
ConntrackGCMaxInterval            : 0
ContainerIPLocalReservedPorts     : auto
CreationTime                      : 2025-08-03T14:22:04.492290664Z
DNSMaxIPsPerRestoredRule          : 1000
DNSPolicyUnloadOnShutdown         : false
DNSProxyConcurrencyLimit          : 0
DNSProxyConcurrencyProcessingGracePeriod: 0
DNSProxyEnableTransparentMode     : true
DNSProxyInsecureSkipTransparentModeCheck: false
DNSProxyLockCount                 : 131
DNSProxyLockTimeout               : 500000000
DNSProxySocketLingerTimeout       : 10
DatapathMode                      : veth
Debug                             : false
DebugVerbose                      : []
Devices                           : [ens18]
DirectRoutingSkipUnreachable      : false
DisableCiliumEndpointCRD          : false
DisableExternalIPMitigation       : false
DryMode                           : false
EgressMultiHomeIPRuleCompat       : false
EnableAutoDirectRouting           : false
EnableAutoProtectNodePortRange    : true
EnableBGPControlPlane             : false
EnableBGPControlPlaneStatusReport : true
EnableBPFClockProbe               : false
EnableBPFMasquerade               : false
EnableBPFTProxy                   : false
EnableCiliumClusterwideNetworkPolicy: true
EnableCiliumEndpointSlice         : false
EnableCiliumNetworkPolicy         : true
EnableCustomCalls                 : false
EnableEgressGateway               : false
EnableEncryptionStrictMode        : false
EnableEndpointHealthChecking      : true
EnableEndpointLockdownOnPolicyOverflow: false
EnableEndpointRoutes              : false
EnableEnvoyConfig                 : false
EnableHealthCheckLoadBalancerIP   : false
EnableHealthChecking              : true
EnableHealthDatapath              : false
EnableHostFirewall                : false
EnableHostLegacyRouting           : true
EnableICMPRules                   : true
EnableIPIPTermination             : false
EnableIPMasqAgent                 : false
EnableIPSec                       : false
EnableIPSecEncryptedOverlay       : false
EnableIPSecXfrmStateCaching       : true
EnableIPsecKeyWatcher             : true
EnableIPv4                        : true
EnableIPv4FragmentsTracking       : true
EnableIPv4Masquerade              : true
EnableIPv6                        : false
EnableIPv6FragmentsTracking       : false
EnableIPv6Masquerade              : false
EnableIPv6NDP                     : false
EnableIdentityMark                : true
EnableInternalTrafficPolicy       : true
EnableK8sNetworkPolicy            : true
EnableL2Announcements             : false
EnableL7Proxy                     : true
EnableLocalNodeRoute              : true
EnableLocalRedirectPolicy         : true
EnableMKE                         : false
EnableMasqueradeRouteSource       : false
EnableNat46X64Gateway             : false
EnableNodeSelectorLabels          : false
EnableNonDefaultDenyPolicies      : true
EnablePMTUDiscovery               : false
EnablePolicy                      : default
EnableRecorder                    : false
EnableSCTP                        : false
EnableSRv6                        : false
EnableSocketLBPeer                : true
EnableSocketLBPodConnectionTermination: true
EnableSocketLBTracing             : true
EnableSourceIPVerification        : true
EnableTCX                         : true
EnableTracing                     : false
EnableUnreachableRoutes           : false
EnableVTEP                        : false
EnableWireguard                   : false
EnableXDPPrefilter                : false
EncryptInterface                  : []
EncryptNode                       : false
EncryptionStrictModeAllowRemoteNodeIdentities: false
EncryptionStrictModeCIDR          : 
EndpointQueueSize                 : 25
ExcludeLocalAddresses             : <nil>
ExcludeNodeLabelPatterns          : <nil>
ExternalEnvoyProxy                : true
FQDNProxyResponseMaxDelay         : 100000000
FQDNRegexCompileLRUSize           : 1024
FQDNRejectResponse                : refused
FixedIdentityMapping
FixedZoneMapping                  : <nil>
ForceDeviceRequired               : false
FragmentsMapEntries               : 8192
HTTP403Message                    : 
HealthCheckICMPFailureThreshold   : 3
HostV4Addr                        : 
HostV6Addr                        : 
IPAM                              : kubernetes
IPAMCiliumNodeUpdateRate          : 15000000000
IPAMDefaultIPPool                 : default
IPAMMultiPoolPreAllocation
	default                   : 8
IPMasqAgentConfigPath             : /etc/config/ip-masq-agent
IPSecKeyFile                      : 
IPsecKeyRotationDuration          : 300000000000
IPv4NativeRoutingCIDR
	IP                        : 10.0.0.0
	Mask                      : //8AAA==
IPv4NodeAddr                      : auto
IPv4PodSubnets                    : []
IPv4Range                         : auto
IPv4ServiceRange                  : auto
IPv6ClusterAllocCIDR              : f00d::/64
IPv6ClusterAllocCIDRBase          : f00d::
IPv6MCastDevice                   : 
IPv6NAT46x64CIDR                  : 64:ff9b::/96
IPv6NAT46x64CIDRBase              : 64:ff9b::
IPv6NativeRoutingCIDR             : <nil>
IPv6NodeAddr                      : auto
IPv6PodSubnets                    : []
IPv6Range                         : auto
IPv6ServiceRange                  : auto
IdentityAllocationMode            : crd
IdentityChangeGracePeriod         : 5000000000
IdentityRestoreGracePeriod        : 30000000000
InstallIptRules                   : true
InstallNoConntrackIptRules        : false
InstallUplinkRoutesForDelegatedIPAM: false
K8sEnableLeasesFallbackDiscovery  : false
K8sNamespace                      : kube-system
K8sRequireIPv4PodCIDR             : true
K8sRequireIPv6PodCIDR             : false
K8sSyncTimeout                    : 180000000000
KeepConfig                        : false
KernelHz                          : 250
L2AnnouncerLeaseDuration          : 15000000000
L2AnnouncerRenewDeadline          : 5000000000
L2AnnouncerRetryPeriod            : 2000000000
LBDevInheritIPAddr                : 
LabelPrefixFile                   : 
Labels                            : []
LibDir                            : /var/lib/cilium
LoadBalancerExternalControlPlane  : false
LoadBalancerIPIPSockMark          : false
LoadBalancerProtocolDifferentiation: true
LoadBalancerRSSv4
	IP                        : 
	Mask                      : <nil>
LoadBalancerRSSv4CIDR             : 
LoadBalancerRSSv6
	IP                        : 
	Mask                      : <nil>
LoadBalancerRSSv6CIDR             : 
LocalRouterIPv4                   : 
LocalRouterIPv6                   : 
LogDriver                         : []
LogOpt
LogSystemLoadConfig               : false
MTU                               : 0
MasqueradeInterfaces              : []
MaxConnectedClusters              : 255
MaxControllerInterval             : 0
MaxInternalTimerDelay             : 0
Monitor
	cpus                      : 10
	npages                    : 64
	pagesize                  : 4096
MonitorAggregation                : medium
MonitorAggregationFlags           : 255
MonitorAggregationInterval        : 5000000000
NATMapEntriesGlobal               : 147056
NeighMapEntriesGlobal             : 147056
NodeEncryptionOptOutLabels        : [map[]]
NodeEncryptionOptOutLabelsString  : node-role.kubernetes.io/control-plane
NodeLabels                        : []
NodePortAcceleration              : disabled
NodePortBindProtection            : true
NodePortNat46X64                  : false
PolicyAccounting                  : true
PolicyAuditMode                   : false
PolicyCIDRMatchMode               : []
PolicyMapFullReconciliationInterval: 900000000000
PolicyTriggerInterval             : 1000000000
PreAllocateMaps                   : false
ProcFs                            : /host/proc
PrometheusServeAddr               : 
RestoreState                      : true
ReverseFixedZoneMapping           : <nil>
RouteMetric                       : 0
RoutingMode                       : tunnel
RunDir                            : /var/run/cilium
SRv6EncapMode                     : reduced
ServiceLoopbackIPv4               : 169.254.42.1
ServiceNoBackendResponse          : reject
SizeofCTElement                   : 94
SizeofNATElement                  : 94
SizeofNeighElement                : 24
SizeofSockRevElement              : 52
SocketPath                        : /var/run/cilium/cilium.sock
StateDir                          : /var/run/cilium/state
TCFilterPriority                  : 1
ToFQDNsEnableDNSCompression       : true
ToFQDNsIdleConnectionGracePeriod  : 0
ToFQDNsMaxDeferredConnectionDeletes: 10000
ToFQDNsMaxIPsPerHost              : 1000
ToFQDNsMinTTL                     : 0
ToFQDNsPreCache                   : 
ToFQDNsProxyPort                  : 0
TracePayloadlen                   : 128
TracePayloadlenOverlay            : 192
UseCiliumInternalIPForIPsec       : false
VLANBPFBypass                     : []
Version                           : false
VtepCIDRs                         : <nil>
VtepCidrMask                      : 
VtepEndpoints                     : <nil>
VtepMACs                          : <nil>
WireguardPersistentKeepalive      : 0
WireguardTrackAllIPsFallback      : false
XDPMode                           : 
k8s-configuration                 : 
k8s-endpoint                      : 
##### Read-write configurations #####
ConntrackAccounting               : Disabled
Debug                             : Disabled
DebugLB                           : Disabled
DropNotification                  : Enabled
MonitorAggregationLevel           : Medium
PolicyAccounting                  : Enabled
PolicyAuditMode                   : Disabled
PolicyTracing                     : Disabled
PolicyVerdictNotification         : Enabled
SourceIPVerification              : Enabled
TraceNotification                 : Enabled
MonitorNumPages                   : 64
PolicyEnforcement                 : default
