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
