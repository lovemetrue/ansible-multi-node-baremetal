# Cilium debug information

#### Cilium version

```
1.18.0 274205f0 2025-07-28T15:22:50+02:00 go version go1.24.5 linux/amd64
```


#### Kernel version

```
5.15.0
```


#### Endpoint list

```
ENDPOINT   POLICY (ingress)   POLICY (egress)   IDENTITY   LABELS (source:key[=value])                                                  IPv6   IPv4         STATUS   
           ENFORCEMENT        ENFORCEMENT                                                                                                                   
482        Disabled           Disabled          24121      k8s:io.cilium.k8s.namespace.labels.kubernetes.io/metadata.name=kube-system          10.0.1.184   ready   
                                                           k8s:io.cilium.k8s.policy.cluster=default                                                                 
                                                           k8s:io.cilium.k8s.policy.serviceaccount=coredns                                                          
                                                           k8s:io.kubernetes.pod.namespace=kube-system                                                              
                                                           k8s:k8s-app=kube-dns                                                                                     
1178       Disabled           Disabled          2284       k8s:app.kubernetes.io/name=hubble-ui                                                10.0.1.78    ready   
                                                           k8s:app.kubernetes.io/part-of=cilium                                                                     
                                                           k8s:io.cilium.k8s.namespace.labels.kubernetes.io/metadata.name=kube-system                               
                                                           k8s:io.cilium.k8s.policy.cluster=default                                                                 
                                                           k8s:io.cilium.k8s.policy.serviceaccount=hubble-ui                                                        
                                                           k8s:io.kubernetes.pod.namespace=kube-system                                                              
                                                           k8s:k8s-app=hubble-ui                                                                                    
3132       Disabled           Disabled          45704      k8s:io.cilium.k8s.namespace.labels.kubernetes.io/metadata.name=kube-system          10.0.1.156   ready   
                                                           k8s:io.cilium.k8s.policy.cluster=default                                                                 
                                                           k8s:io.cilium.k8s.policy.serviceaccount=metrics-server                                                   
                                                           k8s:io.kubernetes.pod.namespace=kube-system                                                              
                                                           k8s:k8s-app=metrics-server                                                                               
3788       Disabled           Disabled          1          k8s:k8slens-edit-resource-version=v1                                                             ready   
                                                           k8s:node-role.kubernetes.io/worker                                                                       
                                                           reserved:host                                                                                            
3911       Disabled           Disabled          4          reserved:health                                                                     10.0.1.237   ready   
```

#### BPF Policy Get 482

```
POLICY   DIRECTION   IDENTITY   PORT/PROTO   PROXY PORT   AUTH TYPE   BYTES   PACKETS   PREFIX   
Allow    Ingress     0          ANY          NONE         disabled    -       -         0        
Allow    Ingress     1          ANY          NONE         disabled    88487   1017      0        
Allow    Egress      0          ANY          NONE         disabled    17382   177       0        

```


#### BPF CT List 482

```
Invalid argument: unknown type 482
```


#### Endpoint Get 482

```
[
  {
    "id": 482,
    "spec": {
      "label-configuration": {},
      "options": {
        "ConntrackAccounting": "Disabled",
        "Debug": "Disabled",
        "DebugLB": "Disabled",
        "DebugPolicy": "Disabled",
        "DropNotification": "Enabled",
        "MonitorAggregationLevel": "Medium",
        "PolicyAccounting": "Enabled",
        "PolicyAuditMode": "Disabled",
        "PolicyVerdictNotification": "Enabled",
        "SourceIPVerification": "Enabled",
        "TraceNotification": "Enabled"
      }
    },
    "status": {
      "controllers": [
        {
          "configuration": {
            "error-retry": true,
            "error-retry-base": "2s",
            "interval": "1s"
          },
          "name": "endpoint-482-regeneration-recovery",
          "status": {
            "last-failure-timestamp": "0001-01-01T00:00:00.000Z",
            "last-success-timestamp": "0001-01-01T00:00:00.000Z"
          },
          "uuid": "696e201d-4d4f-4a72-be9d-a234e884f2e6"
        },
        {
          "configuration": {
            "error-retry": true
          },
          "name": "resolve-labels-kube-system/coredns-54558b56c7-tsmph",
          "status": {
            "last-failure-timestamp": "0001-01-01T00:00:00.000Z",
            "last-success-timestamp": "2025-08-03T14:22:15.795Z",
            "success-count": 2
          },
          "uuid": "5248236d-d740-4377-ac73-64e4fa1c1980"
        },
        {
          "configuration": {
            "error-retry": true
          },
          "name": "restoring-ep-identity (482)",
          "status": {
            "last-failure-timestamp": "0001-01-01T00:00:00.000Z",
            "last-success-timestamp": "2025-08-03T14:22:07.164Z",
            "success-count": 1
          },
          "uuid": "b87619bc-a179-4707-88a6-fad07d57e7fd"
        },
        {
          "configuration": {
            "error-retry": true,
            "interval": "15m0s"
          },
          "name": "sync-policymap-482",
          "status": {
            "last-failure-timestamp": "0001-01-01T00:00:00.000Z",
            "last-success-timestamp": "2025-08-03T14:22:15.661Z",
            "success-count": 1
          },
          "uuid": "68a4f8cf-1b1f-4a4e-a1b0-5bfbc2288d3b"
        },
        {
          "configuration": {
            "error-retry": true,
            "interval": "10s"
          },
          "name": "sync-to-k8s-ciliumendpoint (482)",
          "status": {
            "last-failure-timestamp": "0001-01-01T00:00:00.000Z",
            "last-success-timestamp": "2025-08-03T14:24:57.183Z",
            "success-count": 18
          },
          "uuid": "6cff4d1a-eeb7-4a88-bad0-ce7c34b6b0bd"
        },
        {
          "configuration": {
            "error-retry": true
          },
          "name": "waiting-initial-global-identities-ep (482)",
          "status": {
            "last-failure-timestamp": "0001-01-01T00:00:00.000Z",
            "last-success-timestamp": "2025-08-03T14:22:07.164Z",
            "success-count": 1
          },
          "uuid": "f5fc6d39-2b27-4e13-91ab-ef3042c3b78d"
        }
      ],
      "external-identifiers": {
        "cni-attachment-id": "1560205b37e722c487bef9a32a488f0eacf984a7dfb446fef1b0aad32385bfa7:eth0",
        "container-id": "1560205b37e722c487bef9a32a488f0eacf984a7dfb446fef1b0aad32385bfa7",
        "k8s-namespace": "kube-system",
        "k8s-pod-name": "coredns-54558b56c7-tsmph",
        "pod-name": "kube-system/coredns-54558b56c7-tsmph"
      },
      "health": {
        "bpf": "OK",
        "connected": true,
        "overallHealth": "OK",
        "policy": "OK"
      },
      "identity": {
        "id": 24121,
        "labels": [
          "k8s:io.cilium.k8s.namespace.labels.kubernetes.io/metadata.name=kube-system",
          "k8s:io.cilium.k8s.policy.cluster=default",
          "k8s:io.cilium.k8s.policy.serviceaccount=coredns",
          "k8s:io.kubernetes.pod.namespace=kube-system",
          "k8s:k8s-app=kube-dns"
        ]
      },
      "labels": {
        "derived": [
          "k8s:pod-template-hash=54558b56c7"
        ],
        "realized": {},
        "security-relevant": [
          "k8s:io.cilium.k8s.namespace.labels.kubernetes.io/metadata.name=kube-system",
          "k8s:io.cilium.k8s.policy.cluster=default",
          "k8s:io.cilium.k8s.policy.serviceaccount=coredns",
          "k8s:io.kubernetes.pod.namespace=kube-system",
          "k8s:k8s-app=kube-dns"
        ]
      },
      "log": [
        {
          "code": "OK",
          "message": "Successfully regenerated endpoint program (Reason: periodic endpoint regeneration)",
          "state": "ready",
          "timestamp": "2025-08-03T14:24:05Z"
        }
      ],
      "namedPorts": [
        {
          "name": "dns",
          "port": 53,
          "protocol": "UDP"
        },
        {
          "name": "dns-tcp",
          "port": 53,
          "protocol": "TCP"
        },
        {
          "name": "metrics",
          "port": 9153,
          "protocol": "TCP"
        }
      ],
      "networking": {
        "addressing": [
          {
            "ipv4": "10.0.1.184",
            "ipv4-pool-name": "default"
          }
        ],
        "container-interface-name": "eth0",
        "host-mac": "0a:f4:f4:a7:f1:cc",
        "interface-index": 92,
        "interface-name": "lxc9f888d020df3",
        "mac": "22:b2:68:ca:d6:e9"
      },
      "policy": {
        "proxy-policy-revision": 1,
        "proxy-statistics": [],
        "realized": {
          "allowed-egress-identities": [
            0
          ],
          "allowed-ingress-identities": [
            0,
            1
          ],
          "build": 1,
          "denied-egress-identities": null,
          "denied-ingress-identities": null,
          "id": 24121,
          "l4": {
            "egress": [],
            "ingress": []
          },
          "policy-enabled": "none",
          "policy-revision": 1
        },
        "spec": {
          "allowed-egress-identities": [
            0
          ],
          "allowed-ingress-identities": [
            0,
            1
          ],
          "build": 1,
          "denied-egress-identities": null,
          "denied-ingress-identities": null,
          "id": 24121,
          "l4": {
            "egress": [],
            "ingress": []
          },
          "policy-enabled": "none",
          "policy-revision": 1
        }
      },
      "realized": {
        "label-configuration": {},
        "options": {
          "ConntrackAccounting": "Disabled",
          "Debug": "Disabled",
          "DebugLB": "Disabled",
          "DebugPolicy": "Disabled",
          "DropNotification": "Enabled",
          "MonitorAggregationLevel": "Medium",
          "PolicyAccounting": "Enabled",
          "PolicyAuditMode": "Disabled",
          "PolicyVerdictNotification": "Enabled",
          "SourceIPVerification": "Enabled",
          "TraceNotification": "Enabled"
        }
      },
      "state": "ready"
    }
  }
]


```


#### Endpoint Health 482

```
Overall Health:   OK
BPF Health:       OK
Policy Health:    OK
Connected:        yes

```


#### Endpoint Log 482

```
Timestamp              Status   State                   Message
2025-08-03T14:24:05Z   OK       ready                   Successfully regenerated endpoint program (Reason: periodic endpoint regeneration)
2025-08-03T14:24:05Z   OK       ready                   Completed endpoint regeneration with no pending regeneration requests
2025-08-03T14:24:05Z   OK       regenerating            Regenerating endpoint: periodic endpoint regeneration
2025-08-03T14:24:05Z   OK       waiting-to-regenerate   Triggering endpoint regeneration due to periodic endpoint regeneration
2025-08-03T14:22:15Z   OK       ready                   Successfully regenerated endpoint program (Reason: Configuration or devices changed)
2025-08-03T14:22:15Z   OK       ready                   Completed endpoint regeneration with no pending regeneration requests
2025-08-03T14:22:15Z   OK       regenerating            Regenerating endpoint: Configuration or devices changed
2025-08-03T14:22:15Z   OK       waiting-to-regenerate   Successfully regenerated endpoint program (Reason: syncing state to host)
2025-08-03T14:22:11Z   OK       waiting-to-regenerate   Triggering endpoint regeneration due to Configuration or devices changed
2025-08-03T14:22:07Z   OK       regenerating            Regenerating endpoint: syncing state to host
2025-08-03T14:22:07Z   OK       restoring               Synchronizing endpoint labels with KVStore
2025-08-03T14:22:07Z   OK       restoring               Restoring endpoint from previous cilium instance
2025-08-03T14:22:05Z   OK       restoring               Endpoint restoring

```


#### Identity get 24121

```
ID      LABELS
24121   k8s:io.cilium.k8s.namespace.labels.kubernetes.io/metadata.name=kube-system
        k8s:io.cilium.k8s.policy.cluster=default
        k8s:io.cilium.k8s.policy.serviceaccount=coredns
        k8s:io.kubernetes.pod.namespace=kube-system
        k8s:k8s-app=kube-dns

```


#### BPF Policy Get 1178

```
POLICY   DIRECTION   IDENTITY   PORT/PROTO   PROXY PORT   AUTH TYPE   BYTES    PACKETS   PREFIX   
Allow    Ingress     0          ANY          NONE         disabled    -        -         0        
Allow    Ingress     1          ANY          NONE         disabled    200073   2331      0        
Allow    Egress      0          ANY          NONE         disabled    -        -         0        

```


#### BPF CT List 1178

```
Invalid argument: unknown type 1178
```


#### Endpoint Get 1178

```
[
  {
    "id": 1178,
    "spec": {
      "label-configuration": {},
      "options": {
        "ConntrackAccounting": "Disabled",
        "Debug": "Disabled",
        "DebugLB": "Disabled",
        "DebugPolicy": "Disabled",
        "DropNotification": "Enabled",
        "MonitorAggregationLevel": "Medium",
        "PolicyAccounting": "Enabled",
        "PolicyAuditMode": "Disabled",
        "PolicyVerdictNotification": "Enabled",
        "SourceIPVerification": "Enabled",
        "TraceNotification": "Enabled"
      }
    },
    "status": {
      "controllers": [
        {
          "configuration": {
            "error-retry": true,
            "error-retry-base": "2s",
            "interval": "1s"
          },
          "name": "endpoint-1178-regeneration-recovery",
          "status": {
            "last-failure-timestamp": "0001-01-01T00:00:00.000Z",
            "last-success-timestamp": "0001-01-01T00:00:00.000Z"
          },
          "uuid": "cd32e06c-7513-4788-a05a-635fa8004437"
        },
        {
          "configuration": {
            "error-retry": true
          },
          "name": "resolve-labels-kube-system/hubble-ui-655f947f96-bdmvs",
          "status": {
            "last-failure-timestamp": "0001-01-01T00:00:00.000Z",
            "last-success-timestamp": "2025-08-03T14:22:15.919Z",
            "success-count": 2
          },
          "uuid": "301c286b-f8de-4398-83a1-826ce0ae6098"
        },
        {
          "configuration": {
            "error-retry": true
          },
          "name": "restoring-ep-identity (1178)",
          "status": {
            "last-failure-timestamp": "0001-01-01T00:00:00.000Z",
            "last-success-timestamp": "2025-08-03T14:22:07.164Z",
            "success-count": 1
          },
          "uuid": "b6809102-50a8-4410-a465-c257d3e9dd0b"
        },
        {
          "configuration": {
            "error-retry": true,
            "interval": "15m0s"
          },
          "name": "sync-policymap-1178",
          "status": {
            "last-failure-timestamp": "0001-01-01T00:00:00.000Z",
            "last-success-timestamp": "2025-08-03T14:22:15.796Z",
            "success-count": 1
          },
          "uuid": "6f5a87b4-f96d-4d77-8631-f4f330be956c"
        },
        {
          "configuration": {
            "error-retry": true,
            "interval": "10s"
          },
          "name": "sync-to-k8s-ciliumendpoint (1178)",
          "status": {
            "last-failure-timestamp": "0001-01-01T00:00:00.000Z",
            "last-success-timestamp": "2025-08-03T14:24:57.183Z",
            "success-count": 18
          },
          "uuid": "fa20d595-a337-4868-a4ae-65b806a3ae09"
        },
        {
          "configuration": {
            "error-retry": true
          },
          "name": "waiting-initial-global-identities-ep (1178)",
          "status": {
            "last-failure-timestamp": "0001-01-01T00:00:00.000Z",
            "last-success-timestamp": "2025-08-03T14:22:07.164Z",
            "success-count": 1
          },
          "uuid": "3e408d7a-69b1-4c55-908b-8a825af083f8"
        }
      ],
      "external-identifiers": {
        "cni-attachment-id": "f8e6ef29dd4fef0fe6ae4acb4061aa0ae5d20e2cd052db130bc5dcab99254efd:eth0",
        "container-id": "f8e6ef29dd4fef0fe6ae4acb4061aa0ae5d20e2cd052db130bc5dcab99254efd",
        "k8s-namespace": "kube-system",
        "k8s-pod-name": "hubble-ui-655f947f96-bdmvs",
        "pod-name": "kube-system/hubble-ui-655f947f96-bdmvs"
      },
      "health": {
        "bpf": "OK",
        "connected": true,
        "overallHealth": "OK",
        "policy": "OK"
      },
      "identity": {
        "id": 2284,
        "labels": [
          "k8s:app.kubernetes.io/name=hubble-ui",
          "k8s:app.kubernetes.io/part-of=cilium",
          "k8s:io.cilium.k8s.namespace.labels.kubernetes.io/metadata.name=kube-system",
          "k8s:io.cilium.k8s.policy.cluster=default",
          "k8s:io.cilium.k8s.policy.serviceaccount=hubble-ui",
          "k8s:io.kubernetes.pod.namespace=kube-system",
          "k8s:k8s-app=hubble-ui"
        ]
      },
      "labels": {
        "derived": [
          "k8s:pod-template-hash=655f947f96"
        ],
        "realized": {},
        "security-relevant": [
          "k8s:app.kubernetes.io/name=hubble-ui",
          "k8s:app.kubernetes.io/part-of=cilium",
          "k8s:io.cilium.k8s.namespace.labels.kubernetes.io/metadata.name=kube-system",
          "k8s:io.cilium.k8s.policy.cluster=default",
          "k8s:io.cilium.k8s.policy.serviceaccount=hubble-ui",
          "k8s:io.kubernetes.pod.namespace=kube-system",
          "k8s:k8s-app=hubble-ui"
        ]
      },
      "log": [
        {
          "code": "OK",
          "message": "Successfully regenerated endpoint program (Reason: periodic endpoint regeneration)",
          "state": "ready",
          "timestamp": "2025-08-03T14:24:05Z"
        }
      ],
      "namedPorts": [
        {
          "name": "grpc",
          "port": 8090,
          "protocol": "TCP"
        },
        {
          "name": "http",
          "port": 8081,
          "protocol": "TCP"
        }
      ],
      "networking": {
        "addressing": [
          {
            "ipv4": "10.0.1.78",
            "ipv4-pool-name": "default"
          }
        ],
        "container-interface-name": "eth0",
        "host-mac": "fa:54:30:02:7f:19",
        "interface-index": 88,
        "interface-name": "lxc1a9e66ab2e3d",
        "mac": "66:0e:21:74:33:51"
      },
      "policy": {
        "proxy-policy-revision": 1,
        "proxy-statistics": [],
        "realized": {
          "allowed-egress-identities": [
            0
          ],
          "allowed-ingress-identities": [
            0,
            1
          ],
          "build": 1,
          "denied-egress-identities": null,
          "denied-ingress-identities": null,
          "id": 2284,
          "l4": {
            "egress": [],
            "ingress": []
          },
          "policy-enabled": "none",
          "policy-revision": 1
        },
        "spec": {
          "allowed-egress-identities": [
            0
          ],
          "allowed-ingress-identities": [
            0,
            1
          ],
          "build": 1,
          "denied-egress-identities": null,
          "denied-ingress-identities": null,
          "id": 2284,
          "l4": {
            "egress": [],
            "ingress": []
          },
          "policy-enabled": "none",
          "policy-revision": 1
        }
      },
      "realized": {
        "label-configuration": {},
        "options": {
          "ConntrackAccounting": "Disabled",
          "Debug": "Disabled",
          "DebugLB": "Disabled",
          "DebugPolicy": "Disabled",
          "DropNotification": "Enabled",
          "MonitorAggregationLevel": "Medium",
          "PolicyAccounting": "Enabled",
          "PolicyAuditMode": "Disabled",
          "PolicyVerdictNotification": "Enabled",
          "SourceIPVerification": "Enabled",
          "TraceNotification": "Enabled"
        }
      },
      "state": "ready"
    }
  }
]


```


#### Endpoint Health 1178

```
Overall Health:   OK
BPF Health:       OK
Policy Health:    OK
Connected:        yes

```


#### Endpoint Log 1178

```
Timestamp              Status   State                   Message
2025-08-03T14:24:05Z   OK       ready                   Successfully regenerated endpoint program (Reason: periodic endpoint regeneration)
2025-08-03T14:24:05Z   OK       ready                   Completed endpoint regeneration with no pending regeneration requests
2025-08-03T14:24:05Z   OK       regenerating            Regenerating endpoint: periodic endpoint regeneration
2025-08-03T14:24:05Z   OK       waiting-to-regenerate   Triggering endpoint regeneration due to periodic endpoint regeneration
2025-08-03T14:22:15Z   OK       ready                   Successfully regenerated endpoint program (Reason: Configuration or devices changed)
2025-08-03T14:22:15Z   OK       ready                   Completed endpoint regeneration with no pending regeneration requests
2025-08-03T14:22:15Z   OK       regenerating            Regenerating endpoint: Configuration or devices changed
2025-08-03T14:22:15Z   OK       waiting-to-regenerate   Successfully regenerated endpoint program (Reason: syncing state to host)
2025-08-03T14:22:11Z   OK       waiting-to-regenerate   Triggering endpoint regeneration due to Configuration or devices changed
2025-08-03T14:22:07Z   OK       regenerating            Regenerating endpoint: syncing state to host
2025-08-03T14:22:07Z   OK       restoring               Synchronizing endpoint labels with KVStore
2025-08-03T14:22:07Z   OK       restoring               Restoring endpoint from previous cilium instance
2025-08-03T14:22:05Z   OK       restoring               Endpoint restoring

```


#### Identity get 2284

```
ID     LABELS
2284   k8s:app.kubernetes.io/name=hubble-ui
       k8s:app.kubernetes.io/part-of=cilium
       k8s:io.cilium.k8s.namespace.labels.kubernetes.io/metadata.name=kube-system
       k8s:io.cilium.k8s.policy.cluster=default
       k8s:io.cilium.k8s.policy.serviceaccount=hubble-ui
       k8s:io.kubernetes.pod.namespace=kube-system
       k8s:k8s-app=hubble-ui

```


#### BPF Policy Get 3132

```
POLICY   DIRECTION   IDENTITY   PORT/PROTO   PROXY PORT   AUTH TYPE   BYTES     PACKETS   PREFIX   
Allow    Ingress     0          ANY          NONE         disabled    -         -         0        
Allow    Ingress     1          ANY          NONE         disabled    1079736   5264      0        
Allow    Egress      0          ANY          NONE         disabled    126803    1313      0        

```


#### BPF CT List 3132

```
Invalid argument: unknown type 3132
```


#### Endpoint Get 3132

```
[
  {
    "id": 3132,
    "spec": {
      "label-configuration": {},
      "options": {
        "ConntrackAccounting": "Disabled",
        "Debug": "Disabled",
        "DebugLB": "Disabled",
        "DebugPolicy": "Disabled",
        "DropNotification": "Enabled",
        "MonitorAggregationLevel": "Medium",
        "PolicyAccounting": "Enabled",
        "PolicyAuditMode": "Disabled",
        "PolicyVerdictNotification": "Enabled",
        "SourceIPVerification": "Enabled",
        "TraceNotification": "Enabled"
      }
    },
    "status": {
      "controllers": [
        {
          "configuration": {
            "error-retry": true,
            "error-retry-base": "2s",
            "interval": "1s"
          },
          "name": "endpoint-3132-regeneration-recovery",
          "status": {
            "last-failure-timestamp": "0001-01-01T00:00:00.000Z",
            "last-success-timestamp": "0001-01-01T00:00:00.000Z"
          },
          "uuid": "944407b0-5cb9-47d8-bab6-45c67c23c249"
        },
        {
          "configuration": {
            "error-retry": true
          },
          "name": "resolve-labels-kube-system/metrics-server-7f4c46496-hwgxn",
          "status": {
            "last-failure-timestamp": "0001-01-01T00:00:00.000Z",
            "last-success-timestamp": "2025-08-03T14:22:15.919Z",
            "success-count": 2
          },
          "uuid": "da7bb3d7-30d8-4282-91a4-0f64047b03a5"
        },
        {
          "configuration": {
            "error-retry": true
          },
          "name": "restoring-ep-identity (3132)",
          "status": {
            "last-failure-timestamp": "0001-01-01T00:00:00.000Z",
            "last-success-timestamp": "2025-08-03T14:22:07.164Z",
            "success-count": 1
          },
          "uuid": "7c38999a-02cd-45f0-8d1b-37f715009cf2"
        },
        {
          "configuration": {
            "error-retry": true,
            "interval": "15m0s"
          },
          "name": "sync-policymap-3132",
          "status": {
            "last-failure-timestamp": "0001-01-01T00:00:00.000Z",
            "last-success-timestamp": "2025-08-03T14:22:15.795Z",
            "success-count": 1
          },
          "uuid": "7f9f4935-c741-491b-9c18-d153f98549fc"
        },
        {
          "configuration": {
            "error-retry": true,
            "interval": "10s"
          },
          "name": "sync-to-k8s-ciliumendpoint (3132)",
          "status": {
            "last-failure-timestamp": "0001-01-01T00:00:00.000Z",
            "last-success-timestamp": "2025-08-03T14:24:57.183Z",
            "success-count": 18
          },
          "uuid": "72876174-0de6-44ee-815c-d4d4deceda84"
        },
        {
          "configuration": {
            "error-retry": true
          },
          "name": "waiting-initial-global-identities-ep (3132)",
          "status": {
            "last-failure-timestamp": "0001-01-01T00:00:00.000Z",
            "last-success-timestamp": "2025-08-03T14:22:07.164Z",
            "success-count": 1
          },
          "uuid": "9f8619ba-e740-4c69-9376-2a99ca22f784"
        }
      ],
      "external-identifiers": {
        "cni-attachment-id": "6a4461c1dc02ad357d5ac1ddf3cff298d0df8f963cf3c718dd9df95a328ce981:eth0",
        "container-id": "6a4461c1dc02ad357d5ac1ddf3cff298d0df8f963cf3c718dd9df95a328ce981",
        "k8s-namespace": "kube-system",
        "k8s-pod-name": "metrics-server-7f4c46496-hwgxn",
        "pod-name": "kube-system/metrics-server-7f4c46496-hwgxn"
      },
      "health": {
        "bpf": "OK",
        "connected": true,
        "overallHealth": "OK",
        "policy": "OK"
      },
      "identity": {
        "id": 45704,
        "labels": [
          "k8s:io.cilium.k8s.namespace.labels.kubernetes.io/metadata.name=kube-system",
          "k8s:io.cilium.k8s.policy.cluster=default",
          "k8s:io.cilium.k8s.policy.serviceaccount=metrics-server",
          "k8s:io.kubernetes.pod.namespace=kube-system",
          "k8s:k8s-app=metrics-server"
        ]
      },
      "labels": {
        "derived": [
          "k8s:pod-template-hash=7f4c46496"
        ],
        "realized": {},
        "security-relevant": [
          "k8s:io.cilium.k8s.namespace.labels.kubernetes.io/metadata.name=kube-system",
          "k8s:io.cilium.k8s.policy.cluster=default",
          "k8s:io.cilium.k8s.policy.serviceaccount=metrics-server",
          "k8s:io.kubernetes.pod.namespace=kube-system",
          "k8s:k8s-app=metrics-server"
        ]
      },
      "log": [
        {
          "code": "OK",
          "message": "Successfully regenerated endpoint program (Reason: periodic endpoint regeneration)",
          "state": "ready",
          "timestamp": "2025-08-03T14:24:05Z"
        }
      ],
      "namedPorts": [
        {
          "name": "https",
          "port": 10250,
          "protocol": "TCP"
        }
      ],
      "networking": {
        "addressing": [
          {
            "ipv4": "10.0.1.156",
            "ipv4-pool-name": "default"
          }
        ],
        "container-interface-name": "eth0",
        "host-mac": "7e:d0:45:7e:3f:c1",
        "interface-index": 66,
        "interface-name": "lxcb16c490a744c",
        "mac": "7e:95:3f:3c:c8:59"
      },
      "policy": {
        "proxy-policy-revision": 1,
        "proxy-statistics": [],
        "realized": {
          "allowed-egress-identities": [
            0
          ],
          "allowed-ingress-identities": [
            0,
            1
          ],
          "build": 1,
          "denied-egress-identities": null,
          "denied-ingress-identities": null,
          "id": 45704,
          "l4": {
            "egress": [],
            "ingress": []
          },
          "policy-enabled": "none",
          "policy-revision": 1
        },
        "spec": {
          "allowed-egress-identities": [
            0
          ],
          "allowed-ingress-identities": [
            0,
            1
          ],
          "build": 1,
          "denied-egress-identities": null,
          "denied-ingress-identities": null,
          "id": 45704,
          "l4": {
            "egress": [],
            "ingress": []
          },
          "policy-enabled": "none",
          "policy-revision": 1
        }
      },
      "realized": {
        "label-configuration": {},
        "options": {
          "ConntrackAccounting": "Disabled",
          "Debug": "Disabled",
          "DebugLB": "Disabled",
          "DebugPolicy": "Disabled",
          "DropNotification": "Enabled",
          "MonitorAggregationLevel": "Medium",
          "PolicyAccounting": "Enabled",
          "PolicyAuditMode": "Disabled",
          "PolicyVerdictNotification": "Enabled",
          "SourceIPVerification": "Enabled",
          "TraceNotification": "Enabled"
        }
      },
      "state": "ready"
    }
  }
]


```


#### Endpoint Health 3132

```
Overall Health:   OK
BPF Health:       OK
Policy Health:    OK
Connected:        yes

```


#### Endpoint Log 3132

```
Timestamp              Status   State                   Message
2025-08-03T14:24:05Z   OK       ready                   Successfully regenerated endpoint program (Reason: periodic endpoint regeneration)
2025-08-03T14:24:05Z   OK       ready                   Completed endpoint regeneration with no pending regeneration requests
2025-08-03T14:24:05Z   OK       regenerating            Regenerating endpoint: periodic endpoint regeneration
2025-08-03T14:24:05Z   OK       waiting-to-regenerate   Triggering endpoint regeneration due to periodic endpoint regeneration
2025-08-03T14:22:15Z   OK       ready                   Successfully regenerated endpoint program (Reason: Configuration or devices changed)
2025-08-03T14:22:15Z   OK       ready                   Completed endpoint regeneration with no pending regeneration requests
2025-08-03T14:22:15Z   OK       regenerating            Regenerating endpoint: Configuration or devices changed
2025-08-03T14:22:15Z   OK       waiting-to-regenerate   Successfully regenerated endpoint program (Reason: syncing state to host)
2025-08-03T14:22:11Z   OK       waiting-to-regenerate   Triggering endpoint regeneration due to Configuration or devices changed
2025-08-03T14:22:07Z   OK       regenerating            Regenerating endpoint: syncing state to host
2025-08-03T14:22:07Z   OK       restoring               Synchronizing endpoint labels with KVStore
2025-08-03T14:22:07Z   OK       restoring               Restoring endpoint from previous cilium instance
2025-08-03T14:22:05Z   OK       restoring               Endpoint restoring

```


#### Identity get 45704

```
ID      LABELS
45704   k8s:io.cilium.k8s.namespace.labels.kubernetes.io/metadata.name=kube-system
        k8s:io.cilium.k8s.policy.cluster=default
        k8s:io.cilium.k8s.policy.serviceaccount=metrics-server
        k8s:io.kubernetes.pod.namespace=kube-system
        k8s:k8s-app=metrics-server

```


#### BPF Policy Get 3788

```
POLICY   DIRECTION   IDENTITY   PORT/PROTO   PROXY PORT   AUTH TYPE   BYTES   PACKETS   PREFIX   
Allow    Ingress     0          ANY          NONE         disabled    -       -         0        
Allow    Egress      0          ANY          NONE         disabled    -       -         0        

```


#### BPF CT List 3788

```
Invalid argument: unknown type 3788
```


#### Endpoint Get 3788

```
[
  {
    "id": 3788,
    "spec": {
      "label-configuration": {
        "user": [
          "k8s:node-role.kubernetes.io/worker"
        ]
      },
      "options": {
        "ConntrackAccounting": "Disabled",
        "Debug": "Disabled",
        "DebugLB": "Disabled",
        "DebugPolicy": "Disabled",
        "DropNotification": "Enabled",
        "MonitorAggregationLevel": "Medium",
        "PolicyAccounting": "Enabled",
        "PolicyAuditMode": "Disabled",
        "PolicyVerdictNotification": "Enabled",
        "SourceIPVerification": "Enabled",
        "TraceNotification": "Enabled"
      }
    },
    "status": {
      "controllers": [
        {
          "configuration": {
            "error-retry": true,
            "error-retry-base": "2s",
            "interval": "1s"
          },
          "name": "endpoint-3788-regeneration-recovery",
          "status": {
            "last-failure-timestamp": "0001-01-01T00:00:00.000Z",
            "last-success-timestamp": "0001-01-01T00:00:00.000Z"
          },
          "uuid": "aa70ce8e-a3fb-4cf6-8fcc-ae5ae0aa393f"
        },
        {
          "configuration": {
            "error-retry": true
          },
          "name": "resolve-labels-/",
          "status": {
            "last-failure-timestamp": "0001-01-01T00:00:00.000Z",
            "last-success-timestamp": "2025-08-03T14:22:07.551Z",
            "success-count": 1
          },
          "uuid": "1825a19a-888e-4271-8c21-fc096bf94510"
        },
        {
          "configuration": {
            "error-retry": true
          },
          "name": "restoring-ep-identity (3788)",
          "status": {
            "last-failure-timestamp": "0001-01-01T00:00:00.000Z",
            "last-success-timestamp": "2025-08-03T14:22:07.163Z",
            "success-count": 1
          },
          "uuid": "b5a981b8-7d66-4725-b312-32c2244e2c27"
        },
        {
          "configuration": {
            "error-retry": true,
            "interval": "15m0s"
          },
          "name": "sync-policymap-3788",
          "status": {
            "last-failure-timestamp": "0001-01-01T00:00:00.000Z",
            "last-success-timestamp": "2025-08-03T14:22:19.307Z",
            "success-count": 1
          },
          "uuid": "3a39de81-f790-4e23-b6bc-4d60d118573e"
        }
      ],
      "external-identifiers": {
        "pod-name": "/"
      },
      "health": {
        "bpf": "OK",
        "connected": true,
        "overallHealth": "OK",
        "policy": "OK"
      },
      "identity": {
        "id": 1,
        "labels": [
          "reserved:host",
          "k8s:k8slens-edit-resource-version=v1",
          "k8s:node-role.kubernetes.io/worker"
        ]
      },
      "labels": {
        "derived": [
          "k8s:k8slens-edit-resource-version=v1",
          "k8s:node-role.kubernetes.io/worker",
          "reserved:host"
        ],
        "realized": {
          "user": [
            "k8s:node-role.kubernetes.io/worker"
          ]
        },
        "security-relevant": [
          "k8s:k8slens-edit-resource-version=v1",
          "k8s:node-role.kubernetes.io/worker",
          "reserved:host"
        ]
      },
      "log": [
        {
          "code": "OK",
          "message": "Successfully regenerated endpoint program (Reason: periodic endpoint regeneration)",
          "state": "ready",
          "timestamp": "2025-08-03T14:24:05Z"
        }
      ],
      "networking": {
        "addressing": [
          {}
        ],
        "host-mac": "26:e4:9d:a3:4e:a3",
        "interface-index": 4,
        "interface-name": "cilium_host",
        "mac": "26:e4:9d:a3:4e:a3"
      },
      "policy": {
        "proxy-statistics": [],
        "realized": {
          "allowed-egress-identities": [
            0
          ],
          "allowed-ingress-identities": [
            0
          ],
          "build": 1,
          "denied-egress-identities": null,
          "denied-ingress-identities": null,
          "id": 1,
          "l4": {
            "egress": [],
            "ingress": []
          },
          "policy-enabled": "none",
          "policy-revision": 1
        },
        "spec": {
          "allowed-egress-identities": [
            0
          ],
          "allowed-ingress-identities": [
            0
          ],
          "build": 1,
          "denied-egress-identities": null,
          "denied-ingress-identities": null,
          "id": 1,
          "l4": {
            "egress": [],
            "ingress": []
          },
          "policy-enabled": "none",
          "policy-revision": 1
        }
      },
      "realized": {
        "label-configuration": {
          "user": [
            "k8s:node-role.kubernetes.io/worker"
          ]
        },
        "options": {
          "ConntrackAccounting": "Disabled",
          "Debug": "Disabled",
          "DebugLB": "Disabled",
          "DebugPolicy": "Disabled",
          "DropNotification": "Enabled",
          "MonitorAggregationLevel": "Medium",
          "PolicyAccounting": "Enabled",
          "PolicyAuditMode": "Disabled",
          "PolicyVerdictNotification": "Enabled",
          "SourceIPVerification": "Enabled",
          "TraceNotification": "Enabled"
        }
      },
      "state": "ready"
    }
  }
]


```


#### Endpoint Health 3788

```
Overall Health:   OK
BPF Health:       OK
Policy Health:    OK
Connected:        yes

```


#### Endpoint Log 3788

```
Timestamp              Status   State                   Message
2025-08-03T14:24:05Z   OK       ready                   Successfully regenerated endpoint program (Reason: periodic endpoint regeneration)
2025-08-03T14:24:05Z   OK       ready                   Completed endpoint regeneration with no pending regeneration requests
2025-08-03T14:24:05Z   OK       regenerating            Regenerating endpoint: periodic endpoint regeneration
2025-08-03T14:24:05Z   OK       waiting-to-regenerate   Triggering endpoint regeneration due to periodic endpoint regeneration
2025-08-03T14:22:19Z   OK       ready                   Successfully regenerated endpoint program (Reason: Configuration or devices changed)
2025-08-03T14:22:19Z   OK       ready                   Completed endpoint regeneration with no pending regeneration requests
2025-08-03T14:22:19Z   OK       regenerating            Regenerating endpoint: Configuration or devices changed
2025-08-03T14:22:19Z   OK       waiting-to-regenerate   Successfully regenerated endpoint program (Reason: syncing state to host)
2025-08-03T14:22:11Z   OK       waiting-to-regenerate   Triggering endpoint regeneration due to Configuration or devices changed
2025-08-03T14:22:07Z   OK       regenerating            Regenerating endpoint: syncing state to host
2025-08-03T14:22:07Z   OK       restoring               Synchronizing endpoint labels with KVStore
2025-08-03T14:22:07Z   OK       restoring               Restoring endpoint from previous cilium instance
2025-08-03T14:22:05Z   OK       restoring               Endpoint restoring

```


#### Identity get 1

```
ID   LABELS
1    reserved:host

```


#### BPF Policy Get 3911

```
POLICY   DIRECTION   IDENTITY   PORT/PROTO   PROXY PORT   AUTH TYPE   BYTES   PACKETS   PREFIX   
Allow    Ingress     0          ANY          NONE         disabled    -       -         0        
Allow    Ingress     1          ANY          NONE         disabled    1864    22        0        
Allow    Egress      0          ANY          NONE         disabled    -       -         0        

```


#### BPF CT List 3911

```
Invalid argument: unknown type 3911
```


#### Endpoint Get 3911

```
[
  {
    "id": 3911,
    "spec": {
      "label-configuration": {},
      "options": {
        "ConntrackAccounting": "Disabled",
        "Debug": "Disabled",
        "DebugLB": "Disabled",
        "DebugPolicy": "Disabled",
        "DropNotification": "Enabled",
        "MonitorAggregationLevel": "Medium",
        "PolicyAccounting": "Enabled",
        "PolicyAuditMode": "Disabled",
        "PolicyVerdictNotification": "Enabled",
        "SourceIPVerification": "Enabled",
        "TraceNotification": "Enabled"
      }
    },
    "status": {
      "controllers": [
        {
          "configuration": {
            "error-retry": true,
            "error-retry-base": "2s",
            "interval": "1s"
          },
          "name": "endpoint-3911-regeneration-recovery",
          "status": {
            "last-failure-timestamp": "0001-01-01T00:00:00.000Z",
            "last-success-timestamp": "0001-01-01T00:00:00.000Z"
          },
          "uuid": "1f7dbe4c-a54f-4b31-8e2b-ddd29ea4f7a1"
        },
        {
          "configuration": {
            "error-retry": true,
            "interval": "5m0s"
          },
          "name": "resolve-identity-3911",
          "status": {
            "last-failure-timestamp": "0001-01-01T00:00:00.000Z",
            "last-success-timestamp": "2025-08-03T14:22:08.288Z",
            "success-count": 1
          },
          "uuid": "a5b74f12-e5b0-4f60-a21f-c8ce3683c2ca"
        },
        {
          "configuration": {
            "error-retry": true,
            "interval": "15m0s"
          },
          "name": "sync-policymap-3911",
          "status": {
            "last-failure-timestamp": "0001-01-01T00:00:00.000Z",
            "last-success-timestamp": "2025-08-03T14:22:15.795Z",
            "success-count": 1
          },
          "uuid": "583f55f1-6343-4b48-a3cc-d3c0b3c7e530"
        }
      ],
      "external-identifiers": {
        "container-name": "cilium-health",
        "pod-name": "/"
      },
      "health": {
        "bpf": "OK",
        "connected": true,
        "overallHealth": "OK",
        "policy": "OK"
      },
      "identity": {
        "id": 4,
        "labels": [
          "reserved:health"
        ]
      },
      "labels": {
        "realized": {},
        "security-relevant": [
          "reserved:health"
        ]
      },
      "log": [
        {
          "code": "OK",
          "message": "Successfully regenerated endpoint program (Reason: periodic endpoint regeneration)",
          "state": "ready",
          "timestamp": "2025-08-03T14:24:05Z"
        }
      ],
      "networking": {
        "addressing": [
          {
            "ipv4": "10.0.1.237",
            "ipv4-pool-name": "default"
          }
        ],
        "host-mac": "52:be:14:18:05:34",
        "interface-index": 94,
        "interface-name": "lxc_health",
        "mac": "de:ce:89:e9:cd:5e"
      },
      "policy": {
        "proxy-policy-revision": 1,
        "proxy-statistics": [],
        "realized": {
          "allowed-egress-identities": [
            0
          ],
          "allowed-ingress-identities": [
            0,
            1
          ],
          "build": 1,
          "denied-egress-identities": null,
          "denied-ingress-identities": null,
          "id": 4,
          "l4": {
            "egress": [],
            "ingress": []
          },
          "policy-enabled": "none",
          "policy-revision": 1
        },
        "spec": {
          "allowed-egress-identities": [
            0
          ],
          "allowed-ingress-identities": [
            0,
            1
          ],
          "build": 1,
          "denied-egress-identities": null,
          "denied-ingress-identities": null,
          "id": 4,
          "l4": {
            "egress": [],
            "ingress": []
          },
          "policy-enabled": "none",
          "policy-revision": 1
        }
      },
      "realized": {
        "label-configuration": {},
        "options": {
          "ConntrackAccounting": "Disabled",
          "Debug": "Disabled",
          "DebugLB": "Disabled",
          "DebugPolicy": "Disabled",
          "DropNotification": "Enabled",
          "MonitorAggregationLevel": "Medium",
          "PolicyAccounting": "Enabled",
          "PolicyAuditMode": "Disabled",
          "PolicyVerdictNotification": "Enabled",
          "SourceIPVerification": "Enabled",
          "TraceNotification": "Enabled"
        }
      },
      "state": "ready"
    }
  }
]


```


#### Endpoint Health 3911

```
Overall Health:   OK
BPF Health:       OK
Policy Health:    OK
Connected:        yes

```


#### Endpoint Log 3911

```
Timestamp              Status   State                   Message
2025-08-03T14:24:05Z   OK       ready                   Successfully regenerated endpoint program (Reason: periodic endpoint regeneration)
2025-08-03T14:24:05Z   OK       ready                   Completed endpoint regeneration with no pending regeneration requests
2025-08-03T14:24:05Z   OK       regenerating            Regenerating endpoint: periodic endpoint regeneration
2025-08-03T14:24:05Z   OK       waiting-to-regenerate   Triggering endpoint regeneration due to periodic endpoint regeneration
2025-08-03T14:22:15Z   OK       ready                   Successfully regenerated endpoint program (Reason: Configuration or devices changed)
2025-08-03T14:22:15Z   OK       ready                   Completed endpoint regeneration with no pending regeneration requests
2025-08-03T14:22:15Z   OK       regenerating            Regenerating endpoint: Configuration or devices changed
2025-08-03T14:22:15Z   OK       waiting-to-regenerate   Successfully regenerated endpoint program (Reason: updated security labels)
2025-08-03T14:22:11Z   OK       waiting-to-regenerate   Triggering endpoint regeneration due to Configuration or devices changed
2025-08-03T14:22:08Z   OK       regenerating            Regenerating endpoint: updated security labels
2025-08-03T14:22:08Z   OK       waiting-to-regenerate   Triggering endpoint regeneration due to updated security labels
2025-08-03T14:22:08Z   OK       ready                   Set identity for this endpoint
2025-08-03T14:22:07Z   OK       waiting-for-identity    Endpoint creation

```


#### Identity get 4

```
ID   LABELS
4    reserved:health

```


#### Policy get

```
:
 []
Revision: 1

```


#### Cilium memory map


```
00400000-0399e000 r-xp 00000000 00:49 2362815                            /usr/bin/cilium-agent
0399e000-07c62000 r--p 0359e000 00:49 2362815                            /usr/bin/cilium-agent
07c62000-07e1a000 rw-p 07862000 00:49 2362815                            /usr/bin/cilium-agent
07e1a000-083a0000 rw-p 00000000 00:00 0 
c000000000-c005400000 rw-p 00000000 00:00 0 
c005400000-c008000000 ---p 00000000 00:00 0 
7f460a42e000-7f460a47f000 rw-p 00000000 00:00 0 
7f460a47f000-7f460a4c0000 rw-s 00000000 00:0e 12559                      anon_inode:[perf_event]
7f460a4c0000-7f460a501000 rw-s 00000000 00:0e 12559                      anon_inode:[perf_event]
7f460a501000-7f460a542000 rw-s 00000000 00:0e 12559                      anon_inode:[perf_event]
7f460a542000-7f460a583000 rw-s 00000000 00:0e 12559                      anon_inode:[perf_event]
7f460a583000-7f460a5c4000 rw-s 00000000 00:0e 12559                      anon_inode:[perf_event]
7f460a5c4000-7f460a605000 rw-s 00000000 00:0e 12559                      anon_inode:[perf_event]
7f460a605000-7f460a646000 rw-s 00000000 00:0e 12559                      anon_inode:[perf_event]
7f460a646000-7f460a687000 rw-s 00000000 00:0e 12559                      anon_inode:[perf_event]
7f460a687000-7f460a6c8000 rw-s 00000000 00:0e 12559                      anon_inode:[perf_event]
7f460a6c8000-7f460a709000 rw-s 00000000 00:0e 12559                      anon_inode:[perf_event]
7f460a709000-7f460a70b000 rw-s 00000000 00:0e 12559                      anon_inode:[perf_event]
7f460a70b000-7f460a70d000 rw-s 00000000 00:0e 12559                      anon_inode:[perf_event]
7f460a70d000-7f460a70f000 rw-s 00000000 00:0e 12559                      anon_inode:[perf_event]
7f460a70f000-7f460a711000 rw-s 00000000 00:0e 12559                      anon_inode:[perf_event]
7f460a711000-7f460a713000 rw-s 00000000 00:0e 12559                      anon_inode:[perf_event]
7f460a713000-7f460a715000 rw-s 00000000 00:0e 12559                      anon_inode:[perf_event]
7f460a715000-7f460a717000 rw-s 00000000 00:0e 12559                      anon_inode:[perf_event]
7f460a717000-7f460a719000 rw-s 00000000 00:0e 12559                      anon_inode:[perf_event]
7f460a719000-7f460a71b000 rw-s 00000000 00:0e 12559                      anon_inode:[perf_event]
7f460a71b000-7f460a71d000 rw-s 00000000 00:0e 12559                      anon_inode:[perf_event]
7f460a71d000-7f460ae13000 rw-p 00000000 00:00 0 
7f460ae13000-7f460af13000 rw-p 00000000 00:00 0 
7f460af13000-7f460af24000 rw-p 00000000 00:00 0 
7f460af24000-7f460cf24000 rw-p 00000000 00:00 0 
7f460cf24000-7f461d0a4000 ---p 00000000 00:00 0 
7f461d0a4000-7f461d0a5000 rw-p 00000000 00:00 0 
7f461d0a5000-7f463d0a4000 ---p 00000000 00:00 0 
7f463d0a4000-7f463d0a5000 rw-p 00000000 00:00 0 
7f463d0a5000-7f464ef54000 ---p 00000000 00:00 0 
7f464ef54000-7f464ef55000 rw-p 00000000 00:00 0 
7f464ef55000-7f465132a000 ---p 00000000 00:00 0 
7f465132a000-7f465132b000 rw-p 00000000 00:00 0 
7f465132b000-7f46517a4000 ---p 00000000 00:00 0 
7f46517a4000-7f46517a5000 rw-p 00000000 00:00 0 
7f46517a5000-7f4651824000 ---p 00000000 00:00 0 
7f4651824000-7f4651884000 rw-p 00000000 00:00 0 
7ffd3aa9a000-7ffd3aabb000 rw-p 00000000 00:00 0                          [stack]
7ffd3abb3000-7ffd3abb7000 r--p 00000000 00:00 0                          [vvar]
7ffd3abb7000-7ffd3abb9000 r-xp 00000000 00:00 0                          [vdso]
ffffffffff600000-ffffffffff601000 --xp 00000000 00:00 0                  [vsyscall]

```


#### Cilium encryption



#### Cilium status

```
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
  cilium-health-ep                                            59s ago        never        0       no error   
  ct-map-pressure                                             30s ago        never        0       no error   
  daemon-validate-config                                      58s ago        never        0       no error   
  endpoint-1178-regeneration-recovery                         never          never        0       no error   
  endpoint-3132-regeneration-recovery                         never          never        0       no error   
  endpoint-3788-regeneration-recovery                         never          never        0       no error   
  endpoint-3911-regeneration-recovery                         never          never        0       no error   
  endpoint-482-regeneration-recovery                          never          never        0       no error   
  endpoint-gc                                                 3m2s ago       never        0       no error   
  endpoint-periodic-regeneration                              1m2s ago       never        0       no error   
  ipcache-inject-labels                                       1m1s ago       never        0       no error   
  k8s-heartbeat                                               32s ago        never        0       no error   
  proxy-ports-checkpoint                                      3m1s ago       never        0       no error   
  resolve-identity-3911                                       2m59s ago      never        0       no error   
  resolve-labels-/                                            3m0s ago       never        0       no error   
  resolve-labels-kube-system/coredns-54558b56c7-tsmph         2m52s ago      never        0       no error   
  resolve-labels-kube-system/hubble-ui-655f947f96-bdmvs       2m52s ago      never        0       no error   
  resolve-labels-kube-system/metrics-server-7f4c46496-hwgxn   2m52s ago      never        0       no error   
  restoring-ep-identity (1178)                                3m0s ago       never        0       no error   
  restoring-ep-identity (3132)                                3m0s ago       never        0       no error   
  restoring-ep-identity (3788)                                3m0s ago       never        0       no error   
  restoring-ep-identity (482)                                 3m0s ago       never        0       no error   
  sync-policymap-1178                                         2m52s ago      never        0       no error   
  sync-policymap-3132                                         2m52s ago      never        0       no error   
  sync-policymap-3788                                         2m48s ago      never        0       no error   
  sync-policymap-3911                                         2m52s ago      never        0       no error   
  sync-policymap-482                                          2m52s ago      never        0       no error   
  sync-to-k8s-ciliumendpoint (1178)                           10s ago        never        0       no error   
  sync-to-k8s-ciliumendpoint (3132)                           10s ago        never        0       no error   
  sync-to-k8s-ciliumendpoint (482)                            10s ago        never        0       no error   
  sync-utime                                                  1m1s ago       never        0       no error   
  waiting-initial-global-identities-ep (1178)                 3m0s ago       never        0       no error   
  waiting-initial-global-identities-ep (3132)                 3m0s ago       never        0       no error   
  waiting-initial-global-identities-ep (482)                  3m0s ago       never        0       no error   
  write-cni-file                                              3m2s ago       never        0       no error   
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
Encryption:   Disabled   
```

#### Cilium environment keys

```
hubble-monitor-events:
egress-multi-home-ip-rule-compat:false
dnsproxy-socket-linger-timeout:10
bpf-lb-rev-nat-map-max:0
tofqdns-dns-reject-response-code:refused
tofqdns-proxy-port:0
enable-ipv6-big-tcp:false
enable-ipv4-masquerade:true
envoy-log:
enable-tracing:false
ipv6-native-routing-cidr:
enable-host-legacy-routing:false
nat-map-stats-entries:32
trace-payloadlen:128
enable-ipsec-key-watcher:true
cluster-health-port:4240
envoy-config-timeout:2m0s
ipv4-range:auto
dns-policy-unload-on-shutdown:false
http-retry-timeout:0
local-router-ipv4:
direct-routing-skip-unreachable:false
log-system-load:false
connectivity-probe-frequency-ratio:0.5
k8s-require-ipv4-pod-cidr:false
enable-cilium-health-api-server-access:
egress-gateway-policy-map-max:16384
boot-id-file:/proc/sys/kernel/random/boot_id
k8s-api-server-urls:
hubble-metrics-server:
srv6-encap-mode:reduced
kube-proxy-replacement:true
enable-endpoint-routes:false
bpf-sock-rev-map-max:0
ipv4-node:auto
enable-bbr-hostns-only:false
enable-bpf-clock-probe:false
hubble-event-queue-size:0
k8s-client-connection-keep-alive:30s
enable-mke:false
envoy-policy-restore-timeout:3m0s
dnsproxy-concurrency-processing-grace-period:0s
bpf-conntrack-accounting:false
enable-host-firewall:false
health-check-icmp-failure-threshold:3
read-cni-conf:
bpf-ct-timeout-service-tcp:2h13m20s
enable-k8s:true
hubble-export-fieldmask:
bpf-lb-mode:snat
enable-source-ip-verification:true
enable-node-port:false
nodeport-addresses:
hubble-metrics:
enable-k8s-endpoint-slice:true
labels:
identity-restore-grace-period:30s
hubble-redact-http-urlquery:false
hubble-network-policy-correlation-enabled:true
api-rate-limit:
enable-icmp-rules:true
bpf-neigh-global-max:524288
pprof-port:6060
hubble-event-buffer-capacity:4095
tofqdns-endpoint-max-ip-per-hostname:1000
enable-identity-mark:true
proxy-idle-timeout-seconds:60
ipsec-key-file:
dnsproxy-enable-transparent-mode:true
k8s-sync-timeout:3m0s
tofqdns-idle-connection-grace-period:0s
encryption-strict-mode-allow-remote-node-identities:false
bpf-lb-sock:false
ipam-cilium-node-update-rate:15s
bpf-ct-global-any-max:262144
lib-dir:/var/lib/cilium
cni-log-file:/var/run/cilium/cilium-cni.log
hubble-tls-client-ca-files:/var/lib/cilium/tls/hubble/client-ca.crt
hubble-recorder-sink-queue-size:1024
bpf-lb-algorithm-annotation:false
max-connected-clusters:255
envoy-http-upstream-linger-timeout:-1
socket-path:/var/run/cilium/cilium.sock
default-lb-service-ipam:lbipam
enable-health-checking:true
container-ip-local-reserved-ports:auto
envoy-keep-cap-netbindservice:false
lb-state-file:
encrypt-node:false
k8s-namespace:kube-system
config-sources:[{"kind":"config-map","namespace":"kube-system","name":"cilium-config"}]
enable-ipip-termination:false
hubble-flowlogs-config-path:
version:false
ipv6-range:auto
l2-pod-announcements-interface:
config-sources-overrides:{"allowConfigKeys":[],"denyConfigKeys":[]}
bpf-lb-ipip-sock-mark:false
exclude-node-label-patterns:
l2-announcements-renew-deadline:5s
identity-heartbeat-timeout:30m0s
route-metric:0
auto-direct-node-routes:false
proxy-gid:1337
ipv4-service-range:auto
policy-trigger-interval:1s
nodes-gc-interval:5m0s
gateway-api-secrets-namespace:
ipv6-mcast-device:
bpf-auth-map-max:524288
config:
proxy-xff-num-trusted-hops-ingress:0
mke-cgroup-mount:
http-request-timeout:3600
allow-icmp-frag-needed:true
enable-stale-cilium-endpoint-cleanup:true
state-dir:/var/run/cilium
metrics-sampling-interval:5m
cilium-endpoint-gc-interval:5m0s
cluster-id:0
bpf-events-policy-verdict-enabled:true
hubble-drop-events-interval:2m0s
hubble-drop-events:false
enable-well-known-identities:false
bpf-lb-nat46x64:false
lb-pressure-metrics-interval:5m0s
kvstore-lease-ttl:15m0s
enable-endpoint-health-checking:true
enable-standalone-dns-proxy:false
enable-local-redirect-policy:true
status-collector-warning-threshold:15s
ipam:kubernetes
iptables-random-fully:false
ip-masq-agent-config-path:/etc/config/ip-masq-agent
clustermesh-sync-timeout:1m0s
egress-masquerade-interfaces:
status-collector-stackdump-path:/run/cilium/state/agent.stack.gz
bpf-ct-timeout-regular-tcp-syn:1m0s
vtep-cidr:
operator-api-serve-addr:127.0.0.1:9234
allocator-list-timeout:3m0s
ipam-default-ip-pool:default
egress-gateway-reconciliation-trigger-interval:1s
enable-ingress-controller:false
ipv4-service-loopback-address:169.254.42.1
enable-l2-neigh-discovery:false
keep-config:false
direct-routing-device:
bpf-lb-maglev-map-max:0
hubble-listen-address::4244
tofqdns-proxy-response-max-delay:100ms
enable-ipv6:false
identity-allocation-sync-interval:5m0s
enable-gops:true
http-idle-timeout:0
k8s-client-qps:10
wireguard-track-all-ips-fallback:false
disable-external-ip-mitigation:false
trace-sock:true
tofqdns-enable-dns-compression:true
ingress-secrets-namespace:
enable-sctp:false
enable-route-mtu-for-cni-chaining:false
node-port-mode:
identity-gc-interval:15m0s
kvstore-max-consecutive-quorum-errors:2
proxy-max-requests-per-connection:0
bpf-lb-affinity-map-max:0
local-max-addr-scope:252
disable-endpoint-crd:false
enable-bpf-masquerade:false
kvstore-opt:
proxy-xff-num-trusted-hops-egress:0
debug:false
k8s-client-burst:20
policy-default-local-cluster:false
hubble-metrics-server-tls-client-ca-files:
remove-cilium-node-taints:true
enable-health-check-loadbalancer-ip:false
tofqdns-min-ttl:0
mesh-auth-enabled:true
prepend-iptables-chains:true
endpoint-gc-interval:5m0s
http-stream-idle-timeout:300
clustermesh-enable-endpoint-sync:false
enable-nat46x64-gateway:false
enable-external-ips:false
clustermesh-enable-mcs-api:false
agent-health-require-k8s-connectivity:true
auto-create-cilium-node-resource:true
enable-ipv4-fragment-tracking:true
bpf-lb-external-clusterip:false
bpf-map-dynamic-size-ratio:0.0025
gops-port:9890
certificates-directory:/var/run/cilium/certs
routing-mode:tunnel
enable-masquerade-to-route-source:false
vtep-mask:
bpf-root:/sys/fs/bpf
monitor-aggregation-interval:5s
agent-not-ready-taint-key:node.cilium.io/agent-not-ready
identity-max-jitter:30s
debug-verbose:
service-no-backend-response:reject
use-full-tls-context:false
enable-recorder:false
enable-service-topology:false
bpf-map-event-buffers:
bpf-lb-mode-annotation:false
mesh-auth-rotated-identities-queue-size:1024
bpf-ct-timeout-regular-tcp-fin:10s
set-cilium-node-taints:true
enable-custom-calls:false
node-port-range:
dnsproxy-insecure-skip-transparent-mode-check:false
vlan-bpf-bypass:
pprof-address:localhost
envoy-access-log-buffer-size:4096
ipv4-native-routing-cidr:10.0.0.0/16
fqdn-regex-compile-lru-size:1024
mesh-auth-mutual-connect-timeout:5s
use-cilium-internal-ip-for-ipsec:false
enable-cilium-network-policy:true
write-cni-conf-when-ready:/host/etc/cni/net.d/05-cilium.conflist
multicast-enabled:false
enable-cilium-api-server-access:
node-encryption-opt-out-labels:node-role.kubernetes.io/control-plane
bpf-lb-maglev-table-size:16381
endpoint-regen-interval:2m0s
preallocate-bpf-maps:false
mesh-auth-mutual-listener-port:0
node-port-acceleration:disabled
cgroup-root:/run/cilium/cgroupv2
enable-ipv4:true
enable-envoy-config:false
node-labels:
policy-secrets-namespace:cilium-secrets
policy-audit-mode:false
bpf-policy-stats-map-max:65536
derive-masq-ip-addr-from-device:
hubble-metrics-server-tls-cert-file:
identity-change-grace-period:5s
ipam-multi-pool-pre-allocation:
hubble-drop-events-reasons:
devices:
log-opt:
http-max-grpc-timeout:0
bpf-lb-maglev-hash-seed:JLfvgnHc2kaSUFaI
bpf-lb-map-max:65536
cni-chaining-mode:none
enable-k8s-api-discovery:false
l2-announcements-lease-duration:15s
enable-ipsec:false
http-normalize-path:true
mesh-auth-spire-admin-socket:
enable-lb-ipam:true
bpf-lb-proto-diff:true
restore:true
tunnel-source-port-range:0-0
enable-srv6:false
cni-exclusive:true
identity-allocation-mode:crd
http-retry-count:3
enable-node-selector-labels:false
bpf-events-drop-enabled:true
enable-ipv4-egress-gateway:false
identity-management-mode:agent
dynamic-lifecycle-config:[]
pprof:false
nat-map-stats-interval:30s
vtep-mac:
monitor-aggregation-flags:all
hubble-export-file-max-size-mb:10
enable-non-default-deny-policies:true
enable-host-port:false
k8s-client-connection-timeout:30s
hubble-export-denylist:
restored-proxy-ports-age-limit:15
policy-accounting:true
operator-prometheus-serve-addr::9963
enable-wireguard:false
max-internal-timer-delay:0s
procfs:/host/proc
k8s-kubeconfig-path:
tofqdns-pre-cache:
enable-session-affinity:true
mesh-auth-spiffe-trust-domain:spiffe.cilium
iptables-lock-timeout:5s
enable-pmtu-discovery:false
enable-ipv4-big-tcp:false
annotate-k8s-node:false
synchronize-k8s-nodes:true
underlay-protocol:ipv4
fixed-identity-mapping:
trace-payloadlen-overlay:192
bpf-node-map-max:16384
bpf-ct-timeout-regular-any:1m0s
enable-bandwidth-manager:false
enable-ipsec-encrypted-overlay:false
enable-l2-pod-announcements:false
enable-bbr:false
enable-dynamic-config:true
enable-encryption-strict-mode:false
bpf-lb-source-range-map-max:0
bpf-policy-map-full-reconciliation-interval:15m0s
controller-group-metrics:
bgp-router-id-allocation-mode:default
policy-secrets-only-from-secrets-namespace:true
enable-bgp-control-plane:false
bpf-events-trace-enabled:true
bpf-lb-sock-hostns-only:false
bpf-ct-global-tcp-max:524288
bpf-fragments-map-max:8192
bpf-ct-timeout-regular-tcp:2h13m20s
bpf-distributed-lru:false
vtep-endpoint:
cni-external-routing:false
enable-endpoint-lockdown-on-policy-overflow:false
hubble-redact-http-headers-allow:
enable-l2-announcements:false
k8s-heartbeat-timeout:30s
cflags:
dnsproxy-concurrency-limit:0
local-router-ipv6:
identity-allocation-timeout:2m0s
enable-auto-protect-node-port-range:true
ipv6-pod-subnets:
agent-labels:
bpf-lb-rss-ipv4-src-cidr:
ipv6-cluster-alloc-cidr:f00d::/64
bpf-ct-timeout-service-tcp-grace:1m0s
enable-hubble:true
ipv6-node:auto
bpf-lb-service-map-max:0
set-cilium-is-up-condition:true
cluster-name:default
tofqdns-preallocate-identities:true
bpf-lb-rss-ipv6-src-cidr:
dnsproxy-lock-count:131
enable-l7-proxy:true
enable-policy:default
enable-internal-traffic-policy:true
hubble-export-allowlist:
hubble-redact-enabled:false
hubble-socket-path:/var/run/cilium/hubble.sock
envoy-secrets-namespace:
external-envoy-proxy:true
enable-ipsec-xfrm-state-caching:true
enable-active-connection-tracking:false
hubble-metrics-server-tls-key-file:
custom-cni-conf:false
hubble-export-file-compress:false
envoy-default-log-level:
enable-cilium-endpoint-slice:false
proxy-connect-timeout:2
status-collector-failure-threshold:1m0s
mesh-auth-gc-interval:5m0s
enable-local-node-route:true
policy-queue-size:100
enable-vtep:false
k8s-service-proxy-name:
l2-pod-announcements-interface-pattern:
agent-health-port:9879
max-controller-interval:0
hubble-redact-kafka-apikey:false
datapath-mode:veth
k8s-api-server:
config-dir:/tmp/cilium/config-map
mesh-auth-signal-backoff-duration:1s
ipv4-pod-subnets:
hubble-prefer-ipv6:false
encrypt-interface:
enable-svc-source-range-check:true
install-iptables-rules:true
bpf-events-default-burst-limit:0
log-driver:
bpf-lb-service-backend-map-max:0
prometheus-serve-addr:
unmanaged-pod-watcher-interval:15
enable-cilium-clusterwide-network-policy:true
lb-retry-backoff-min:50ms
allow-localhost:auto
bypass-ip-availability-upon-restore:false
bpf-filter-priority:1
hubble-tls-key-file:/var/lib/cilium/tls/hubble/server.key
proxy-prometheus-port:0
bpf-ct-timeout-service-any:1m0s
enable-policy-secrets-sync:true
mtu:0
proxy-initial-fetch-timeout:30
bpf-lb-sock-terminate-pod-connections:true
enable-hubble-open-metrics:false
l2-announcements-retry-period:2s
proxy-max-concurrent-retries:128
crd-wait-timeout:5m0s
bpf-lb-dsr-dispatch:opt
conntrack-gc-interval:0s
tunnel-port:0
enable-ip-masq-agent:false
enable-xdp-prefilter:false
policy-cidr-match-mode:
standalone-dns-proxy-server-port:40045
node-port-bind-protection:true
enable-monitor:true
agent-liveness-update-interval:1s
metrics:
status-collector-probe-check-timeout:5m0s
encryption-strict-mode-cidr:
node-port-algorithm:
lb-retry-backoff-max:50ms
cni-chaining-target:
envoy-config-retry-interval:15s
enable-hubble-recorder-api:true
hubble-redact-http-userinfo:true
force-device-detection:false
kvstore:
ipv6-service-range:auto
enable-dynamic-lifecycle-manager:false
enable-ipv6-ndp:false
bgp-router-id-allocation-ip-pool:
enable-xt-socket-fallback:true
hubble-skip-unknown-cgroup-ids:true
exclude-local-address:
proxy-portrange-max:20000
tofqdns-max-deferred-connection-deletes:10000
label-prefix-file:
monitor-queue-size:0
ignore-flags-drift-checker:
endpoint-bpf-prog-watchdog-interval:30s
install-no-conntrack-iptables-rules:false
bpf-lb-algorithm:random
enable-egress-gateway:false
enable-bpf-tproxy:false
disable-iptables-feeder-rules:
enable-metrics:true
mesh-auth-queue-size:1024
proxy-portrange-min:10000
bpf-events-default-rate-limit:0
enable-drift-checker:true
hubble-metrics-server-enable-tls:false
hubble-recorder-storage-path:/var/run/cilium/pcaps
k8s-require-ipv6-pod-cidr:false
proxy-max-connection-duration-seconds:0
hubble-dynamic-metrics-config-path:
hubble-export-file-max-backups:5
disable-envoy-version-check:false
cmdref:
enable-unreachable-routes:false
monitor-aggregation:medium
dns-max-ips-per-restored-rule:1000
status-collector-interval:5s
enable-health-check-nodeport:true
dnsproxy-lock-timeout:500ms
allow-unsafe-policy-skb-usage:false
hubble-export-file-path:
bpf-lb-acceleration:disabled
hubble-redact-http-headers-deny:
tunnel-protocol:vxlan
lb-state-file-interval:1s
bpf-policy-map-max:16384
enable-bgp-control-plane-status-report:true
static-cnp-path:
hubble-disable-tls:false
install-uplink-routes-for-delegated-ipam:false
enable-ipv6-masquerade:true
bpf-lb-source-range-all-types:false
lrp-address-matcher-cidrs:
hubble-tls-cert-file:/var/lib/cilium/tls/hubble/server.crt
enable-k8s-networkpolicy:true
envoy-base-id:0
kube-proxy-replacement-healthz-bind-address:
enable-tcx:true
proxy-admin-port:0
enable-ipv6-fragment-tracking:true
enable-gateway-api:false
bpf-nat-global-max:524288
conntrack-gc-max-interval:0s
endpoint-queue-size:25
ipsec-key-rotation-duration:5m0s
wireguard-persistent-keepalive:0s
clustermesh-config:/var/lib/cilium/clustermesh/
```


#### Service list

```
ID   Frontend                 Service Type   Backend                                 
1    10.96.0.1:443/TCP        ClusterIP      1 => 91.217.196.189:6443/TCP (active)   
5    10.96.0.10:53/TCP        ClusterIP      1 => 10.0.0.220:53/TCP (active)         
                                             2 => 10.0.1.184:53/TCP (active)         
6    10.96.0.10:9153/TCP      ClusterIP      1 => 10.0.0.220:9153/TCP (active)       
                                             2 => 10.0.1.184:9153/TCP (active)       
7    10.96.0.10:53/UDP        ClusterIP      1 => 10.0.0.220:53/UDP (active)         
                                             2 => 10.0.1.184:53/UDP (active)         
11   10.105.233.177:443/TCP   ClusterIP      1 => 10.0.1.156:10250/TCP (active)      
12   10.100.166.190:80/TCP    ClusterIP      1 => 10.0.0.43:4245/TCP (active)        
13   10.96.196.29:80/TCP      ClusterIP      1 => 10.0.1.78:8081/TCP (active)        
14   10.111.74.126:443/TCP    ClusterIP      1 => 91.217.196.183:4244/TCP (active)   
```

#### kvstore-locks

```
(map[string]kvstore.lockOwner) {
}

```


#### ongoing-endpoint-creations


#### ipam

```
(string) (len=6) "owners"
(map[ipam.Pool]map[string]string) (len=1) {
 (ipam.Pool) (len=7) default: (map[string]string) (len=5) {
  (string) (len=10) "10.0.1.184": (string) (len=47) "kube-system/coredns-54558b56c7-tsmph [restored]",
  (string) (len=9) "10.0.1.78": (string) (len=49) "kube-system/hubble-ui-655f947f96-bdmvs [restored]",
  (string) (len=10) "10.0.1.156": (string) (len=53) "kube-system/metrics-server-7f4c46496-hwgxn [restored]",
  (string) (len=10) "10.0.1.138": (string) (len=6) "router",
  (string) (len=10) "10.0.1.237": (string) (len=6) "health"
 }
}
(string) (len=17) "expiration timers"
(map[ipam.timerKey]ipam.expirationTimer) {
}
(string) (len=12) "excluded ips"
(map[string]string) (len=1) {
 (string) (len=22) "default:91.217.196.183": (string) (len=7) "node-ip"
}

```

