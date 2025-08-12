[
  {
    "spec": {
      "backend-addresses": [
        {
          "ip": "91.217.196.189",
          "port": 6443,
          "preferred": true,
          "protocol": "TCP",
          "state": "active",
          "weight": 100
        }
      ],
      "flags": {
        "extTrafficPolicy": "Cluster",
        "intTrafficPolicy": "Cluster",
        "name": "kubernetes",
        "namespace": "default",
        "trafficPolicy": "Cluster",
        "type": "ClusterIP"
      },
      "frontend-address": {
        "ip": "10.96.0.1",
        "port": 443,
        "protocol": "TCP",
        "scope": "external"
      },
      "id": 1
    },
    "status": {
      "realized": {
        "backend-addresses": [
          {
            "ip": "91.217.196.189",
            "port": 6443,
            "preferred": true,
            "protocol": "TCP",
            "state": "active",
            "weight": 100
          }
        ],
        "flags": {
          "extTrafficPolicy": "Cluster",
          "intTrafficPolicy": "Cluster",
          "name": "kubernetes",
          "namespace": "default",
          "trafficPolicy": "Cluster",
          "type": "ClusterIP"
        },
        "frontend-address": {
          "ip": "10.96.0.1",
          "port": 443,
          "protocol": "TCP",
          "scope": "external"
        },
        "id": 1
      }
    }
  },
  {
    "spec": {
      "backend-addresses": [
        {
          "ip": "10.0.0.220",
          "nodeName": "k8s-master-n1",
          "port": 53,
          "preferred": true,
          "protocol": "TCP",
          "state": "active",
          "weight": 100
        },
        {
          "ip": "10.0.1.184",
          "nodeName": "k8s-worker-n1",
          "port": 53,
          "preferred": true,
          "protocol": "TCP",
          "state": "active",
          "weight": 100
        }
      ],
      "flags": {
        "extTrafficPolicy": "Cluster",
        "intTrafficPolicy": "Cluster",
        "name": "kube-dns",
        "namespace": "kube-system",
        "trafficPolicy": "Cluster",
        "type": "ClusterIP"
      },
      "frontend-address": {
        "ip": "10.96.0.10",
        "port": 53,
        "protocol": "TCP",
        "scope": "external"
      },
      "id": 5
    },
    "status": {
      "realized": {
        "backend-addresses": [
          {
            "ip": "10.0.0.220",
            "nodeName": "k8s-master-n1",
            "port": 53,
            "preferred": true,
            "protocol": "TCP",
            "state": "active",
            "weight": 100
          },
          {
            "ip": "10.0.1.184",
            "nodeName": "k8s-worker-n1",
            "port": 53,
            "preferred": true,
            "protocol": "TCP",
            "state": "active",
            "weight": 100
          }
        ],
        "flags": {
          "extTrafficPolicy": "Cluster",
          "intTrafficPolicy": "Cluster",
          "name": "kube-dns",
          "namespace": "kube-system",
          "trafficPolicy": "Cluster",
          "type": "ClusterIP"
        },
        "frontend-address": {
          "ip": "10.96.0.10",
          "port": 53,
          "protocol": "TCP",
          "scope": "external"
        },
        "id": 5
      }
    }
  },
  {
    "spec": {
      "backend-addresses": [
        {
          "ip": "10.0.0.220",
          "nodeName": "k8s-master-n1",
          "port": 53,
          "preferred": true,
          "protocol": "UDP",
          "state": "active",
          "weight": 100
        },
        {
          "ip": "10.0.1.184",
          "nodeName": "k8s-worker-n1",
          "port": 53,
          "preferred": true,
          "protocol": "UDP",
          "state": "active",
          "weight": 100
        }
      ],
      "flags": {
        "extTrafficPolicy": "Cluster",
        "intTrafficPolicy": "Cluster",
        "name": "kube-dns",
        "namespace": "kube-system",
        "trafficPolicy": "Cluster",
        "type": "ClusterIP"
      },
      "frontend-address": {
        "ip": "10.96.0.10",
        "port": 53,
        "protocol": "UDP",
        "scope": "external"
      },
      "id": 7
    },
    "status": {
      "realized": {
        "backend-addresses": [
          {
            "ip": "10.0.0.220",
            "nodeName": "k8s-master-n1",
            "port": 53,
            "preferred": true,
            "protocol": "UDP",
            "state": "active",
            "weight": 100
          },
          {
            "ip": "10.0.1.184",
            "nodeName": "k8s-worker-n1",
            "port": 53,
            "preferred": true,
            "protocol": "UDP",
            "state": "active",
            "weight": 100
          }
        ],
        "flags": {
          "extTrafficPolicy": "Cluster",
          "intTrafficPolicy": "Cluster",
          "name": "kube-dns",
          "namespace": "kube-system",
          "trafficPolicy": "Cluster",
          "type": "ClusterIP"
        },
        "frontend-address": {
          "ip": "10.96.0.10",
          "port": 53,
          "protocol": "UDP",
          "scope": "external"
        },
        "id": 7
      }
    }
  },
  {
    "spec": {
      "backend-addresses": [
        {
          "ip": "10.0.0.220",
          "nodeName": "k8s-master-n1",
          "port": 9153,
          "preferred": true,
          "protocol": "TCP",
          "state": "active",
          "weight": 100
        },
        {
          "ip": "10.0.1.184",
          "nodeName": "k8s-worker-n1",
          "port": 9153,
          "preferred": true,
          "protocol": "TCP",
          "state": "active",
          "weight": 100
        }
      ],
      "flags": {
        "extTrafficPolicy": "Cluster",
        "intTrafficPolicy": "Cluster",
        "name": "kube-dns",
        "namespace": "kube-system",
        "trafficPolicy": "Cluster",
        "type": "ClusterIP"
      },
      "frontend-address": {
        "ip": "10.96.0.10",
        "port": 9153,
        "protocol": "TCP",
        "scope": "external"
      },
      "id": 6
    },
    "status": {
      "realized": {
        "backend-addresses": [
          {
            "ip": "10.0.0.220",
            "nodeName": "k8s-master-n1",
            "port": 9153,
            "preferred": true,
            "protocol": "TCP",
            "state": "active",
            "weight": 100
          },
          {
            "ip": "10.0.1.184",
            "nodeName": "k8s-worker-n1",
            "port": 9153,
            "preferred": true,
            "protocol": "TCP",
            "state": "active",
            "weight": 100
          }
        ],
        "flags": {
          "extTrafficPolicy": "Cluster",
          "intTrafficPolicy": "Cluster",
          "name": "kube-dns",
          "namespace": "kube-system",
          "trafficPolicy": "Cluster",
          "type": "ClusterIP"
        },
        "frontend-address": {
          "ip": "10.96.0.10",
          "port": 9153,
          "protocol": "TCP",
          "scope": "external"
        },
        "id": 6
      }
    }
  },
  {
    "spec": {
      "backend-addresses": [
        {
          "ip": "10.0.1.78",
          "nodeName": "k8s-worker-n1",
          "port": 8081,
          "preferred": true,
          "protocol": "TCP",
          "state": "active",
          "weight": 100
        }
      ],
      "flags": {
        "extTrafficPolicy": "Cluster",
        "intTrafficPolicy": "Cluster",
        "name": "hubble-ui",
        "namespace": "kube-system",
        "trafficPolicy": "Cluster",
        "type": "ClusterIP"
      },
      "frontend-address": {
        "ip": "10.96.196.29",
        "port": 80,
        "protocol": "TCP",
        "scope": "external"
      },
      "id": 13
    },
    "status": {
      "realized": {
        "backend-addresses": [
          {
            "ip": "10.0.1.78",
            "nodeName": "k8s-worker-n1",
            "port": 8081,
            "preferred": true,
            "protocol": "TCP",
            "state": "active",
            "weight": 100
          }
        ],
        "flags": {
          "extTrafficPolicy": "Cluster",
          "intTrafficPolicy": "Cluster",
          "name": "hubble-ui",
          "namespace": "kube-system",
          "trafficPolicy": "Cluster",
          "type": "ClusterIP"
        },
        "frontend-address": {
          "ip": "10.96.196.29",
          "port": 80,
          "protocol": "TCP",
          "scope": "external"
        },
        "id": 13
      }
    }
  },
  {
    "spec": {
      "backend-addresses": [
        {
          "ip": "10.0.0.43",
          "nodeName": "k8s-master-n1",
          "port": 4245,
          "preferred": true,
          "protocol": "TCP",
          "state": "active",
          "weight": 100
        }
      ],
      "flags": {
        "extTrafficPolicy": "Cluster",
        "intTrafficPolicy": "Cluster",
        "name": "hubble-relay",
        "namespace": "kube-system",
        "trafficPolicy": "Cluster",
        "type": "ClusterIP"
      },
      "frontend-address": {
        "ip": "10.100.166.190",
        "port": 80,
        "protocol": "TCP",
        "scope": "external"
      },
      "id": 12
    },
    "status": {
      "realized": {
        "backend-addresses": [
          {
            "ip": "10.0.0.43",
            "nodeName": "k8s-master-n1",
            "port": 4245,
            "preferred": true,
            "protocol": "TCP",
            "state": "active",
            "weight": 100
          }
        ],
        "flags": {
          "extTrafficPolicy": "Cluster",
          "intTrafficPolicy": "Cluster",
          "name": "hubble-relay",
          "namespace": "kube-system",
          "trafficPolicy": "Cluster",
          "type": "ClusterIP"
        },
        "frontend-address": {
          "ip": "10.100.166.190",
          "port": 80,
          "protocol": "TCP",
          "scope": "external"
        },
        "id": 12
      }
    }
  },
  {
    "spec": {
      "backend-addresses": [
        {
          "ip": "10.0.1.156",
          "nodeName": "k8s-worker-n1",
          "port": 10250,
          "preferred": true,
          "protocol": "TCP",
          "state": "active",
          "weight": 100
        }
      ],
      "flags": {
        "extTrafficPolicy": "Cluster",
        "intTrafficPolicy": "Cluster",
        "name": "metrics-server",
        "namespace": "kube-system",
        "trafficPolicy": "Cluster",
        "type": "ClusterIP"
      },
      "frontend-address": {
        "ip": "10.105.233.177",
        "port": 443,
        "protocol": "TCP",
        "scope": "external"
      },
      "id": 11
    },
    "status": {
      "realized": {
        "backend-addresses": [
          {
            "ip": "10.0.1.156",
            "nodeName": "k8s-worker-n1",
            "port": 10250,
            "preferred": true,
            "protocol": "TCP",
            "state": "active",
            "weight": 100
          }
        ],
        "flags": {
          "extTrafficPolicy": "Cluster",
          "intTrafficPolicy": "Cluster",
          "name": "metrics-server",
          "namespace": "kube-system",
          "trafficPolicy": "Cluster",
          "type": "ClusterIP"
        },
        "frontend-address": {
          "ip": "10.105.233.177",
          "port": 443,
          "protocol": "TCP",
          "scope": "external"
        },
        "id": 11
      }
    }
  },
  {
    "spec": {
      "backend-addresses": [
        {
          "ip": "91.217.196.183",
          "nodeName": "k8s-worker-n1",
          "port": 4244,
          "preferred": true,
          "protocol": "TCP",
          "state": "active",
          "weight": 100
        }
      ],
      "flags": {
        "extTrafficPolicy": "Cluster",
        "intTrafficPolicy": "Local",
        "name": "hubble-peer",
        "namespace": "kube-system",
        "trafficPolicy": "Cluster",
        "type": "ClusterIP"
      },
      "frontend-address": {
        "ip": "10.111.74.126",
        "port": 443,
        "protocol": "TCP",
        "scope": "external"
      },
      "id": 14
    },
    "status": {
      "realized": {
        "backend-addresses": [
          {
            "ip": "91.217.196.183",
            "nodeName": "k8s-worker-n1",
            "port": 4244,
            "preferred": true,
            "protocol": "TCP",
            "state": "active",
            "weight": 100
          }
        ],
        "flags": {
          "extTrafficPolicy": "Cluster",
          "intTrafficPolicy": "Local",
          "name": "hubble-peer",
          "namespace": "kube-system",
          "trafficPolicy": "Cluster",
          "type": "ClusterIP"
        },
        "frontend-address": {
          "ip": "10.111.74.126",
          "port": 443,
          "protocol": "TCP",
          "scope": "external"
        },
        "id": 14
      }
    }
  }
]

