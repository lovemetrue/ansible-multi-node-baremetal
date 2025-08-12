[
  {
    "health-endpoint-address": {
      "ipv4": {
        "enabled": true,
        "ip": "10.0.1.237"
      },
      "ipv6": {}
    },
    "name": "k8s-worker-n1",
    "primary-address": {
      "ipv4": {
        "alloc-range": "10.0.1.0/24",
        "enabled": true,
        "ip": "91.217.196.183"
      },
      "ipv6": {}
    },
    "secondary-addresses": [
      {
        "ip": "10.0.1.138"
      }
    ],
    "source": "custom-resource"
  },
  {
    "health-endpoint-address": {
      "ipv4": {
        "enabled": true,
        "ip": "10.0.0.203"
      },
      "ipv6": {}
    },
    "name": "k8s-master-n1",
    "primary-address": {
      "ipv4": {
        "alloc-range": "10.0.0.0/24",
        "enabled": true,
        "ip": "91.217.196.189"
      },
      "ipv6": {}
    },
    "secondary-addresses": [
      {
        "ip": "10.0.0.124"
      }
    ],
    "source": "local"
  }
]

