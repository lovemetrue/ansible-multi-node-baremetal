Direct access to local BPF maps

Usage:
  cilium-dbg bpf [command]

Available Commands:
  auth        Manage authenticated connections between identities
  bandwidth   BPF datapath bandwidth settings
  config      Manage runtime config
  ct          Connection tracking tables
  egress      Manage the egress routing rules
  endpoint    Local endpoint map
  frag        Manage the IPv4 datagram fragments
  fs          BPF filesystem mount
  ipcache     Manage the IPCache mappings for IP/CIDR <-> Identity
  ipmasq      ip-masq-agent CIDRs
  lb          Load-balancing configuration
  metrics     BPF datapath traffic metrics
  multicast   Manage multicast BPF programs
  nat         NAT mapping tables
  nodeid      Manage the node IDs
  policy      Manage policy related BPF maps
  recorder    PCAP recorder
  sha         Manage compiled BPF template objects
  socknat     Socket NAT operations
  srv6        Manage the SRv6 routing rules
  vtep        Manage the VTEP mappings for IP/CIDR <-> VTEP MAC/IP

Flags:
  -h, --help   help for bpf

Global Flags:
      --config string        Config file (default is $HOME/.cilium.yaml)
  -D, --debug                Enable debug messages
  -H, --host string          URI to server-side API
      --log-driver strings   Logging endpoints to use (example: syslog)
      --log-opt map          Log driver options (example: format=json)

Use "cilium-dbg bpf [command] --help" for more information about a command.
