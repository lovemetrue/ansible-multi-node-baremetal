{
  "local": {
    "name": "k8s-master-n1"
  },
  "nodes": [
    {
      "endpoint": {
        "http": {
          "lastProbed": "2025-08-03T14:22:47Z",
          "status": "Get \"http://10.0.1.237:4240/hello\": context deadline exceeded (Client.Timeout exceeded while awaiting headers)"
        },
        "icmp": {
          "lastProbed": "2025-08-03T14:22:47Z",
          "status": "Connection timed out"
        },
        "ip": "10.0.1.237"
      },
      "health-endpoint": {
        "primary-address": {
          "http": {
            "lastProbed": "2025-08-03T14:22:47Z",
            "status": "Get \"http://10.0.1.237:4240/hello\": context deadline exceeded (Client.Timeout exceeded while awaiting headers)"
          },
          "icmp": {
            "lastProbed": "2025-08-03T14:22:47Z",
            "status": "Connection timed out"
          },
          "ip": "10.0.1.237"
        },
        "secondary-addresses": []
      },
      "host": {
        "primary-address": {
          "http": {
            "lastProbed": "2025-08-03T14:23:49Z",
            "latency": 988255
          },
          "icmp": {
            "lastProbed": "2025-08-03T14:23:49Z",
            "latency": 518144
          },
          "ip": "91.217.196.183"
        },
        "secondary-addresses": []
      },
      "name": "k8s-worker-n1"
    },
    {
      "endpoint": {
        "http": {
          "lastProbed": "2025-08-03T14:23:25Z",
          "latency": 511428
        },
        "icmp": {
          "lastProbed": "2025-08-03T14:23:25Z",
          "latency": 203847
        },
        "ip": "10.0.0.203"
      },
      "health-endpoint": {
        "primary-address": {
          "http": {
            "lastProbed": "2025-08-03T14:23:25Z",
            "latency": 511428
          },
          "icmp": {
            "lastProbed": "2025-08-03T14:23:25Z",
            "latency": 203847
          },
          "ip": "10.0.0.203"
        },
        "secondary-addresses": []
      },
      "host": {
        "primary-address": {
          "http": {
            "lastProbed": "2025-08-03T14:23:01Z",
            "latency": 844698
          },
          "icmp": {
            "lastProbed": "2025-08-03T14:23:01Z",
            "latency": 145787
          },
          "ip": "91.217.196.189"
        },
        "secondary-addresses": []
      },
      "name": "k8s-master-n1"
    }
  ],
  "probeInterval": "1m36.566274746s",
  "timestamp": "2025-08-03T14:23:49Z"
}

