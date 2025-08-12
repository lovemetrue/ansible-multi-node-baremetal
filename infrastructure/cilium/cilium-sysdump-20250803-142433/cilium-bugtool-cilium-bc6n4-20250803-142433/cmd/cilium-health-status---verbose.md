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
