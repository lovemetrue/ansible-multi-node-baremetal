{
  "local": {
    "name": "k8s-worker-n1"
  },
  "nodes": [
    {
      "endpoint": {
        "http": {
          "lastProbed": "2025-08-03T14:22:43Z",
          "latency": 1816261
        },
        "icmp": {
          "lastProbed": "2025-08-03T14:22:43Z",
          "latency": 359454
        },
        "ip": "10.0.1.237"
      },
      "health-endpoint": {
        "primary-address": {
          "http": {
            "lastProbed": "2025-08-03T14:22:43Z",
            "latency": 1816261
          },
          "icmp": {
            "lastProbed": "2025-08-03T14:22:43Z",
            "latency": 359454
          },
          "ip": "10.0.1.237"
        },
        "secondary-addresses": []
      },
      "host": {
        "primary-address": {
          "http": {
            "lastProbed": "2025-08-03T14:23:55Z",
            "latency": 782048
          },
          "icmp": {
            "lastProbed": "2025-08-03T14:23:55Z",
            "latency": 152724
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
          "lastProbed": "2025-08-03T14:23:41Z",
          "status": "Get \"http://10.0.0.203:4240/hello\": context deadline exceeded (Client.Timeout exceeded while awaiting headers)"
        },
        "icmp": {
          "lastProbed": "2025-08-03T14:23:41Z",
          "status": "Connection timed out"
        },
        "ip": "10.0.0.203"
      },
      "health-endpoint": {
        "primary-address": {
          "http": {
            "lastProbed": "2025-08-03T14:23:41Z",
            "status": "Get \"http://10.0.0.203:4240/hello\": context deadline exceeded (Client.Timeout exceeded while awaiting headers)"
          },
          "icmp": {
            "lastProbed": "2025-08-03T14:23:41Z",
            "status": "Connection timed out"
          },
          "ip": "10.0.0.203"
        },
        "secondary-addresses": []
      },
      "host": {
        "primary-address": {
          "http": {
            "lastProbed": "2025-08-03T14:23:07Z",
            "latency": 1996945
          },
          "icmp": {
            "lastProbed": "2025-08-03T14:23:07Z",
            "latency": 598403
          },
          "ip": "91.217.196.189"
        },
        "secondary-addresses": []
      },
      "name": "k8s-master-n1"
    }
  ],
  "probeInterval": "1m36.566274746s",
  "timestamp": "2025-08-03T14:23:55Z"
}

