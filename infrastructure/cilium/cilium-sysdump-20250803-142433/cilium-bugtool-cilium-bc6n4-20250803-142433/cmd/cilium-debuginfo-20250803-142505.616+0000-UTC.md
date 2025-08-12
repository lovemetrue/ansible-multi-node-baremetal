# Cilium debug information

#### Endpoint list

```
ENDPOINT   POLICY (ingress)   POLICY (egress)   IDENTITY   LABELS (source:key[=value])                                                  IPv6   IPv4         STATUS   
           ENFORCEMENT        ENFORCEMENT                                                                                                                   
33         Disabled           Disabled          24121      k8s:io.cilium.k8s.namespace.labels.kubernetes.io/metadata.name=kube-system          10.0.0.220   ready   
                                                           k8s:io.cilium.k8s.policy.cluster=default                                                                 
                                                           k8s:io.cilium.k8s.policy.serviceaccount=coredns                                                          
                                                           k8s:io.kubernetes.pod.namespace=kube-system                                                              
                                                           k8s:k8s-app=kube-dns                                                                                     
274        Disabled           Disabled          17157      k8s:app.kubernetes.io/name=hubble-relay                                             10.0.0.43    ready   
                                                           k8s:app.kubernetes.io/part-of=cilium                                                                     
                                                           k8s:io.cilium.k8s.namespace.labels.kubernetes.io/metadata.name=kube-system                               
                                                           k8s:io.cilium.k8s.policy.cluster=default                                                                 
                                                           k8s:io.cilium.k8s.policy.serviceaccount=hubble-relay                                                     
                                                           k8s:io.kubernetes.pod.namespace=kube-system                                                              
                                                           k8s:k8s-app=hubble-relay                                                                                 
342        Disabled           Disabled          1          k8s:k8slens-edit-resource-version=v1                                                             ready   
                                                           k8s:node-role.kubernetes.io/control-plane                                                                
                                                           k8s:node.kubernetes.io/exclude-from-external-load-balancers                                              
                                                           reserved:host                                                                                            
398        Disabled           Disabled          64642      k8s:io.cilium.k8s.namespace.labels.kubernetes.io/metadata.name=default              10.0.0.236   ready   
                                                           k8s:io.cilium.k8s.policy.cluster=default                                                                 
                                                           k8s:io.cilium.k8s.policy.serviceaccount=default                                                          
                                                           k8s:io.kubernetes.pod.namespace=default                                                                  
2838       Disabled           Disabled          4          reserved:health                                                                     10.0.0.203   ready   
```

#### BPF Policy Get 33

```
POLICY   DIRECTION   IDENTITY   PORT/PROTO   PROXY PORT   AUTH TYPE   BYTES   PACKETS   PREFIX   
Allow    Ingress     0          ANY          NONE         disabled    1146    10        0        
Allow    Ingress     1          ANY          NONE         disabled    87760   1013      0        
Allow    Egress      0          ANY          NONE         disabled    15041   159       0        

```


#### BPF CT List 33

```
Invalid argument: unknown type 33
```


#### Endpoint Get 33

```
[
  {
    "id": 33,
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
          "name": "endpoint-33-regeneration-recovery",
          "status": {
            "last-failure-timestamp": "0001-01-01T00:00:00.000Z",
            "last-success-timestamp": "0001-01-01T00:00:00.000Z"
          },
          "uuid": "73082dbd-abf8-4fd0-997b-159bc6ddd087"
        },
        {
          "configuration": {
            "error-retry": true
          },
          "name": "resolve-labels-kube-system/coredns-54558b56c7-zth5g",
          "status": {
            "last-failure-timestamp": "0001-01-01T00:00:00.000Z",
            "last-success-timestamp": "2025-08-03T14:22:13.921Z",
            "success-count": 2
          },
          "uuid": "862cf417-cde4-4c83-bec5-9d2026e97c82"
        },
        {
          "configuration": {
            "error-retry": true
          },
          "name": "restoring-ep-identity (33)",
          "status": {
            "last-failure-timestamp": "0001-01-01T00:00:00.000Z",
            "last-success-timestamp": "2025-08-03T14:22:06.829Z",
            "success-count": 1
          },
          "uuid": "fe14d31e-e51f-4ea2-ae94-732ec8846f47"
        },
        {
          "configuration": {
            "error-retry": true,
            "interval": "15m0s"
          },
          "name": "sync-policymap-33",
          "status": {
            "last-failure-timestamp": "0001-01-01T00:00:00.000Z",
            "last-success-timestamp": "2025-08-03T14:22:13.824Z",
            "success-count": 1
          },
          "uuid": "d2ec7513-6b3e-475c-9700-904784c18e38"
        },
        {
          "configuration": {
            "error-retry": true,
            "interval": "10s"
          },
          "name": "sync-to-k8s-ciliumendpoint (33)",
          "status": {
            "last-failure-timestamp": "0001-01-01T00:00:00.000Z",
            "last-success-timestamp": "2025-08-03T14:24:56.847Z",
            "success-count": 18
          },
          "uuid": "e7debe1f-1ea8-419d-9459-4356a1461b2d"
        },
        {
          "configuration": {
            "error-retry": true
          },
          "name": "waiting-initial-global-identities-ep (33)",
          "status": {
            "last-failure-timestamp": "0001-01-01T00:00:00.000Z",
            "last-success-timestamp": "2025-08-03T14:22:06.829Z",
            "success-count": 1
          },
          "uuid": "d8d04872-eb5f-400a-86d6-dc446afdc7a7"
        }
      ],
      "external-identifiers": {
        "cni-attachment-id": "3b8977b0dd99a56e2e4c8369822d02c50cbb6e8a2cbae8ee27ce399393445d10:eth0",
        "container-id": "3b8977b0dd99a56e2e4c8369822d02c50cbb6e8a2cbae8ee27ce399393445d10",
        "k8s-namespace": "kube-system",
        "k8s-pod-name": "coredns-54558b56c7-zth5g",
        "pod-name": "kube-system/coredns-54558b56c7-zth5g"
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
          "timestamp": "2025-08-03T14:24:04Z"
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
            "ipv4": "10.0.0.220",
            "ipv4-pool-name": "default"
          }
        ],
        "container-interface-name": "eth0",
        "host-mac": "52:b7:d0:6a:ac:bd",
        "interface-index": 94,
        "interface-name": "lxcf9e134da9662",
        "mac": "86:28:9e:26:0f:a5"
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


#### Endpoint Health 33

```
Overall Health:   OK
BPF Health:       OK
Policy Health:    OK
Connected:        yes

```


#### Endpoint Log 33

```
Timestamp              Status   State                   Message
2025-08-03T14:24:04Z   OK       ready                   Successfully regenerated endpoint program (Reason: periodic endpoint regeneration)
2025-08-03T14:24:04Z   OK       ready                   Completed endpoint regeneration with no pending regeneration requests
2025-08-03T14:24:04Z   OK       regenerating            Regenerating endpoint: periodic endpoint regeneration
2025-08-03T14:24:04Z   OK       waiting-to-regenerate   Triggering endpoint regeneration due to periodic endpoint regeneration
2025-08-03T14:22:13Z   OK       ready                   Successfully regenerated endpoint program (Reason: Configuration or devices changed)
2025-08-03T14:22:13Z   OK       ready                   Completed endpoint regeneration with no pending regeneration requests
2025-08-03T14:22:13Z   OK       regenerating            Regenerating endpoint: Configuration or devices changed
2025-08-03T14:22:13Z   OK       waiting-to-regenerate   Successfully regenerated endpoint program (Reason: syncing state to host)
2025-08-03T14:22:10Z   OK       waiting-to-regenerate   Triggering endpoint regeneration due to Configuration or devices changed
2025-08-03T14:22:07Z   OK       regenerating            Regenerating endpoint: syncing state to host
2025-08-03T14:22:07Z   OK       restoring               Synchronizing endpoint labels with KVStore
2025-08-03T14:22:06Z   OK       restoring               Restoring endpoint from previous cilium instance
2025-08-03T14:22:04Z   OK       restoring               Endpoint restoring

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


#### BPF Policy Get 274

```
POLICY   DIRECTION   IDENTITY   PORT/PROTO   PROXY PORT   AUTH TYPE   BYTES    PACKETS   PREFIX   
Allow    Ingress     0          ANY          NONE         disabled    -        -         0        
Allow    Ingress     1          ANY          NONE         disabled    459056   5128      0        
Allow    Egress      0          ANY          NONE         disabled    25004    203       0        

```


#### BPF CT List 274

```
Invalid argument: unknown type 274
```


#### Endpoint Get 274

```
[
  {
    "id": 274,
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
          "name": "endpoint-274-regeneration-recovery",
          "status": {
            "last-failure-timestamp": "0001-01-01T00:00:00.000Z",
            "last-success-timestamp": "0001-01-01T00:00:00.000Z"
          },
          "uuid": "6e2b3bdb-0a5c-4ac1-90c3-4818579fc3d6"
        },
        {
          "configuration": {
            "error-retry": true
          },
          "name": "resolve-labels-kube-system/hubble-relay-6b7b5877f4-vfr4c",
          "status": {
            "last-failure-timestamp": "0001-01-01T00:00:00.000Z",
            "last-success-timestamp": "2025-08-03T14:22:13.925Z",
            "success-count": 2
          },
          "uuid": "48741450-ff7a-45d0-b7cf-47c0978fc391"
        },
        {
          "configuration": {
            "error-retry": true
          },
          "name": "restoring-ep-identity (274)",
          "status": {
            "last-failure-timestamp": "0001-01-01T00:00:00.000Z",
            "last-success-timestamp": "2025-08-03T14:22:06.828Z",
            "success-count": 1
          },
          "uuid": "c629fc2f-a2c4-452a-b54f-8d3917c3f7a0"
        },
        {
          "configuration": {
            "error-retry": true,
            "interval": "15m0s"
          },
          "name": "sync-policymap-274",
          "status": {
            "last-failure-timestamp": "0001-01-01T00:00:00.000Z",
            "last-success-timestamp": "2025-08-03T14:22:13.825Z",
            "success-count": 1
          },
          "uuid": "86625324-adb0-4ff6-a1fe-b5eaafb22750"
        },
        {
          "configuration": {
            "error-retry": true,
            "interval": "10s"
          },
          "name": "sync-to-k8s-ciliumendpoint (274)",
          "status": {
            "last-failure-timestamp": "0001-01-01T00:00:00.000Z",
            "last-success-timestamp": "2025-08-03T14:24:56.847Z",
            "success-count": 18
          },
          "uuid": "679d19d0-786f-4156-af9c-ce4979e59cd5"
        },
        {
          "configuration": {
            "error-retry": true
          },
          "name": "waiting-initial-global-identities-ep (274)",
          "status": {
            "last-failure-timestamp": "0001-01-01T00:00:00.000Z",
            "last-success-timestamp": "2025-08-03T14:22:06.828Z",
            "success-count": 1
          },
          "uuid": "476c6b5b-aa10-453b-a1fd-26d51e866243"
        }
      ],
      "external-identifiers": {
        "cni-attachment-id": "321c54f7fe9e0e378913c1d36e18850ef301171369db90cf98a874f2d177d1ff:eth0",
        "container-id": "321c54f7fe9e0e378913c1d36e18850ef301171369db90cf98a874f2d177d1ff",
        "k8s-namespace": "kube-system",
        "k8s-pod-name": "hubble-relay-6b7b5877f4-vfr4c",
        "pod-name": "kube-system/hubble-relay-6b7b5877f4-vfr4c"
      },
      "health": {
        "bpf": "OK",
        "connected": true,
        "overallHealth": "OK",
        "policy": "OK"
      },
      "identity": {
        "id": 17157,
        "labels": [
          "k8s:app.kubernetes.io/name=hubble-relay",
          "k8s:app.kubernetes.io/part-of=cilium",
          "k8s:io.cilium.k8s.namespace.labels.kubernetes.io/metadata.name=kube-system",
          "k8s:io.cilium.k8s.policy.cluster=default",
          "k8s:io.cilium.k8s.policy.serviceaccount=hubble-relay",
          "k8s:io.kubernetes.pod.namespace=kube-system",
          "k8s:k8s-app=hubble-relay"
        ]
      },
      "labels": {
        "derived": [
          "k8s:pod-template-hash=6b7b5877f4"
        ],
        "realized": {},
        "security-relevant": [
          "k8s:app.kubernetes.io/name=hubble-relay",
          "k8s:app.kubernetes.io/part-of=cilium",
          "k8s:io.cilium.k8s.namespace.labels.kubernetes.io/metadata.name=kube-system",
          "k8s:io.cilium.k8s.policy.cluster=default",
          "k8s:io.cilium.k8s.policy.serviceaccount=hubble-relay",
          "k8s:io.kubernetes.pod.namespace=kube-system",
          "k8s:k8s-app=hubble-relay"
        ]
      },
      "log": [
        {
          "code": "OK",
          "message": "Successfully regenerated endpoint program (Reason: periodic endpoint regeneration)",
          "state": "ready",
          "timestamp": "2025-08-03T14:24:04Z"
        }
      ],
      "namedPorts": [
        {
          "name": "grpc",
          "port": 4245,
          "protocol": "TCP"
        }
      ],
      "networking": {
        "addressing": [
          {
            "ipv4": "10.0.0.43",
            "ipv4-pool-name": "default"
          }
        ],
        "container-interface-name": "eth0",
        "host-mac": "12:59:28:a0:89:94",
        "interface-index": 90,
        "interface-name": "lxc5ca0daa43914",
        "mac": "6e:26:c7:e0:f6:95"
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
          "id": 17157,
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
          "id": 17157,
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


#### Endpoint Health 274

```
Overall Health:   OK
BPF Health:       OK
Policy Health:    OK
Connected:        yes

```


#### Endpoint Log 274

```
Timestamp              Status   State                   Message
2025-08-03T14:24:04Z   OK       ready                   Successfully regenerated endpoint program (Reason: periodic endpoint regeneration)
2025-08-03T14:24:04Z   OK       ready                   Completed endpoint regeneration with no pending regeneration requests
2025-08-03T14:24:04Z   OK       regenerating            Regenerating endpoint: periodic endpoint regeneration
2025-08-03T14:24:04Z   OK       waiting-to-regenerate   Triggering endpoint regeneration due to periodic endpoint regeneration
2025-08-03T14:22:13Z   OK       ready                   Successfully regenerated endpoint program (Reason: Configuration or devices changed)
2025-08-03T14:22:13Z   OK       ready                   Completed endpoint regeneration with no pending regeneration requests
2025-08-03T14:22:13Z   OK       regenerating            Regenerating endpoint: Configuration or devices changed
2025-08-03T14:22:13Z   OK       waiting-to-regenerate   Successfully regenerated endpoint program (Reason: syncing state to host)
2025-08-03T14:22:10Z   OK       waiting-to-regenerate   Triggering endpoint regeneration due to Configuration or devices changed
2025-08-03T14:22:07Z   OK       regenerating            Regenerating endpoint: syncing state to host
2025-08-03T14:22:07Z   OK       restoring               Synchronizing endpoint labels with KVStore
2025-08-03T14:22:06Z   OK       restoring               Restoring endpoint from previous cilium instance
2025-08-03T14:22:04Z   OK       restoring               Endpoint restoring

```


#### Identity get 17157

```
ID      LABELS
17157   k8s:app.kubernetes.io/name=hubble-relay
        k8s:app.kubernetes.io/part-of=cilium
        k8s:io.cilium.k8s.namespace.labels.kubernetes.io/metadata.name=kube-system
        k8s:io.cilium.k8s.policy.cluster=default
        k8s:io.cilium.k8s.policy.serviceaccount=hubble-relay
        k8s:io.kubernetes.pod.namespace=kube-system
        k8s:k8s-app=hubble-relay

```


#### BPF Policy Get 342

```
POLICY   DIRECTION   IDENTITY   PORT/PROTO   PROXY PORT   AUTH TYPE   BYTES   PACKETS   PREFIX   
Allow    Ingress     0          ANY          NONE         disabled    -       -         0        
Allow    Egress      0          ANY          NONE         disabled    -       -         0        

```


#### BPF CT List 342

```
Invalid argument: unknown type 342
```


#### Endpoint Get 342

```
[
  {
    "id": 342,
    "spec": {
      "label-configuration": {
        "user": [
          "k8s:k8slens-edit-resource-version=v1"
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
          "name": "endpoint-342-regeneration-recovery",
          "status": {
            "last-failure-timestamp": "0001-01-01T00:00:00.000Z",
            "last-success-timestamp": "0001-01-01T00:00:00.000Z"
          },
          "uuid": "0b494e27-b21c-4399-a0dc-17bba531c758"
        },
        {
          "configuration": {
            "error-retry": true
          },
          "name": "resolve-labels-/",
          "status": {
            "last-failure-timestamp": "0001-01-01T00:00:00.000Z",
            "last-success-timestamp": "2025-08-03T14:22:07.204Z",
            "success-count": 1
          },
          "uuid": "81c00daf-3157-4ee7-8856-6ab2219c4a59"
        },
        {
          "configuration": {
            "error-retry": true
          },
          "name": "restoring-ep-identity (342)",
          "status": {
            "last-failure-timestamp": "0001-01-01T00:00:00.000Z",
            "last-success-timestamp": "2025-08-03T14:22:06.829Z",
            "success-count": 1
          },
          "uuid": "b04c5c96-ffa8-492e-af92-f6c2604b14fd"
        },
        {
          "configuration": {
            "error-retry": true,
            "interval": "15m0s"
          },
          "name": "sync-policymap-342",
          "status": {
            "last-failure-timestamp": "0001-01-01T00:00:00.000Z",
            "last-success-timestamp": "2025-08-03T14:22:13.273Z",
            "success-count": 1
          },
          "uuid": "35c5a01c-9456-42cc-88ea-6b83bb4950a4"
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
          "k8s:node-role.kubernetes.io/control-plane",
          "k8s:node.kubernetes.io/exclude-from-external-load-balancers"
        ]
      },
      "labels": {
        "derived": [
          "k8s:k8slens-edit-resource-version=v1",
          "k8s:node-role.kubernetes.io/control-plane",
          "k8s:node.kubernetes.io/exclude-from-external-load-balancers",
          "reserved:host"
        ],
        "realized": {
          "user": [
            "k8s:k8slens-edit-resource-version=v1"
          ]
        },
        "security-relevant": [
          "k8s:k8slens-edit-resource-version=v1",
          "k8s:node-role.kubernetes.io/control-plane",
          "k8s:node.kubernetes.io/exclude-from-external-load-balancers",
          "reserved:host"
        ]
      },
      "log": [
        {
          "code": "OK",
          "message": "Successfully regenerated endpoint program (Reason: periodic endpoint regeneration)",
          "state": "ready",
          "timestamp": "2025-08-03T14:24:04Z"
        }
      ],
      "networking": {
        "addressing": [
          {}
        ],
        "host-mac": "8a:2a:c0:92:10:72",
        "interface-index": 4,
        "interface-name": "cilium_host",
        "mac": "8a:2a:c0:92:10:72"
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
            "k8s:k8slens-edit-resource-version=v1"
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


#### Endpoint Health 342

```
Overall Health:   OK
BPF Health:       OK
Policy Health:    OK
Connected:        yes

```


#### Endpoint Log 342

```
Timestamp              Status   State                   Message
2025-08-03T14:24:04Z   OK       ready                   Successfully regenerated endpoint program (Reason: periodic endpoint regeneration)
2025-08-03T14:24:04Z   OK       ready                   Completed endpoint regeneration with no pending regeneration requests
2025-08-03T14:24:04Z   OK       regenerating            Regenerating endpoint: periodic endpoint regeneration
2025-08-03T14:24:04Z   OK       waiting-to-regenerate   Triggering endpoint regeneration due to periodic endpoint regeneration
2025-08-03T14:22:14Z   OK       ready                   Successfully regenerated endpoint program (Reason: Configuration or devices changed)
2025-08-03T14:22:14Z   OK       ready                   Completed endpoint regeneration with no pending regeneration requests
2025-08-03T14:22:13Z   OK       regenerating            Regenerating endpoint: Configuration or devices changed
2025-08-03T14:22:13Z   OK       waiting-to-regenerate   Successfully regenerated endpoint program (Reason: syncing state to host)
2025-08-03T14:22:10Z   OK       waiting-to-regenerate   Triggering endpoint regeneration due to Configuration or devices changed
2025-08-03T14:22:07Z   OK       regenerating            Regenerating endpoint: syncing state to host
2025-08-03T14:22:07Z   OK       restoring               Synchronizing endpoint labels with KVStore
2025-08-03T14:22:06Z   OK       restoring               Restoring endpoint from previous cilium instance
2025-08-03T14:22:04Z   OK       restoring               Endpoint restoring

```


#### Identity get 1

```
ID   LABELS
1    reserved:host
     reserved:kube-apiserver

```


#### BPF Policy Get 398

```
POLICY   DIRECTION   IDENTITY   PORT/PROTO   PROXY PORT   AUTH TYPE   BYTES   PACKETS   PREFIX   
Allow    Ingress     0          ANY          NONE         disabled    -       -         0        
Allow    Ingress     1          ANY          NONE         disabled    -       -         0        
Allow    Egress      0          ANY          NONE         disabled    3536    35        0        

```


#### BPF CT List 398

```
Invalid argument: unknown type 398
```


#### Endpoint Get 398

```
[
  {
    "id": 398,
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
          "name": "endpoint-398-regeneration-recovery",
          "status": {
            "last-failure-timestamp": "0001-01-01T00:00:00.000Z",
            "last-success-timestamp": "0001-01-01T00:00:00.000Z"
          },
          "uuid": "3dd75b5d-665b-48f8-951a-373669830591"
        },
        {
          "configuration": {
            "error-retry": true
          },
          "name": "resolve-labels-default/dnsutils",
          "status": {
            "last-failure-timestamp": "0001-01-01T00:00:00.000Z",
            "last-success-timestamp": "2025-08-03T14:22:13.940Z",
            "success-count": 2
          },
          "uuid": "fabfe237-bd2f-489e-a6dc-fd639799672c"
        },
        {
          "configuration": {
            "error-retry": true
          },
          "name": "restoring-ep-identity (398)",
          "status": {
            "last-failure-timestamp": "0001-01-01T00:00:00.000Z",
            "last-success-timestamp": "2025-08-03T14:22:06.829Z",
            "success-count": 1
          },
          "uuid": "5d4564e0-3e49-4abd-9f58-c20ef958e023"
        },
        {
          "configuration": {
            "error-retry": true,
            "interval": "15m0s"
          },
          "name": "sync-policymap-398",
          "status": {
            "last-failure-timestamp": "0001-01-01T00:00:00.000Z",
            "last-success-timestamp": "2025-08-03T14:22:13.824Z",
            "success-count": 1
          },
          "uuid": "b71b72ff-b230-4a19-9c45-a264cc353e35"
        },
        {
          "configuration": {
            "error-retry": true,
            "interval": "10s"
          },
          "name": "sync-to-k8s-ciliumendpoint (398)",
          "status": {
            "last-failure-timestamp": "0001-01-01T00:00:00.000Z",
            "last-success-timestamp": "2025-08-03T14:25:06.848Z",
            "success-count": 19
          },
          "uuid": "f4da63c7-3042-4e20-bef9-fd50f2a8276d"
        },
        {
          "configuration": {
            "error-retry": true
          },
          "name": "waiting-initial-global-identities-ep (398)",
          "status": {
            "last-failure-timestamp": "0001-01-01T00:00:00.000Z",
            "last-success-timestamp": "2025-08-03T14:22:06.829Z",
            "success-count": 1
          },
          "uuid": "57af4241-03e6-4b73-b19a-1c4f21e4ca1f"
        }
      ],
      "external-identifiers": {
        "cni-attachment-id": "404de15e19e0249e08a21a64ef9c9f678fc8d3d0826fe6a27c0d02ab422ad5c8:eth0",
        "container-id": "404de15e19e0249e08a21a64ef9c9f678fc8d3d0826fe6a27c0d02ab422ad5c8",
        "k8s-namespace": "default",
        "k8s-pod-name": "dnsutils",
        "pod-name": "default/dnsutils"
      },
      "health": {
        "bpf": "OK",
        "connected": true,
        "overallHealth": "OK",
        "policy": "OK"
      },
      "identity": {
        "id": 64642,
        "labels": [
          "k8s:io.cilium.k8s.namespace.labels.kubernetes.io/metadata.name=default",
          "k8s:io.cilium.k8s.policy.cluster=default",
          "k8s:io.cilium.k8s.policy.serviceaccount=default",
          "k8s:io.kubernetes.pod.namespace=default"
        ]
      },
      "labels": {
        "realized": {},
        "security-relevant": [
          "k8s:io.cilium.k8s.namespace.labels.kubernetes.io/metadata.name=default",
          "k8s:io.cilium.k8s.policy.cluster=default",
          "k8s:io.cilium.k8s.policy.serviceaccount=default",
          "k8s:io.kubernetes.pod.namespace=default"
        ]
      },
      "log": [
        {
          "code": "OK",
          "message": "Successfully regenerated endpoint program (Reason: periodic endpoint regeneration)",
          "state": "ready",
          "timestamp": "2025-08-03T14:24:04Z"
        }
      ],
      "networking": {
        "addressing": [
          {
            "ipv4": "10.0.0.236",
            "ipv4-pool-name": "default"
          }
        ],
        "container-interface-name": "eth0",
        "host-mac": "ca:e6:42:de:e8:18",
        "interface-index": 68,
        "interface-name": "lxcf57d951d1bb3",
        "mac": "3a:c3:97:18:be:fc"
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
          "id": 64642,
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
          "id": 64642,
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


#### Endpoint Health 398

```
Overall Health:   OK
BPF Health:       OK
Policy Health:    OK
Connected:        yes

```


#### Endpoint Log 398

```
Timestamp              Status   State                   Message
2025-08-03T14:24:04Z   OK       ready                   Successfully regenerated endpoint program (Reason: periodic endpoint regeneration)
2025-08-03T14:24:04Z   OK       ready                   Completed endpoint regeneration with no pending regeneration requests
2025-08-03T14:24:04Z   OK       regenerating            Regenerating endpoint: periodic endpoint regeneration
2025-08-03T14:24:04Z   OK       waiting-to-regenerate   Triggering endpoint regeneration due to periodic endpoint regeneration
2025-08-03T14:22:13Z   OK       ready                   Successfully regenerated endpoint program (Reason: Configuration or devices changed)
2025-08-03T14:22:13Z   OK       ready                   Completed endpoint regeneration with no pending regeneration requests
2025-08-03T14:22:13Z   OK       regenerating            Regenerating endpoint: Configuration or devices changed
2025-08-03T14:22:13Z   OK       waiting-to-regenerate   Successfully regenerated endpoint program (Reason: syncing state to host)
2025-08-03T14:22:10Z   OK       waiting-to-regenerate   Triggering endpoint regeneration due to Configuration or devices changed
2025-08-03T14:22:07Z   OK       regenerating            Regenerating endpoint: syncing state to host
2025-08-03T14:22:07Z   OK       restoring               Synchronizing endpoint labels with KVStore
2025-08-03T14:22:06Z   OK       restoring               Restoring endpoint from previous cilium instance
2025-08-03T14:22:04Z   OK       restoring               Endpoint restoring

```


#### Identity get 64642

```
ID      LABELS
64642   k8s:io.cilium.k8s.namespace.labels.kubernetes.io/metadata.name=default
        k8s:io.cilium.k8s.policy.cluster=default
        k8s:io.cilium.k8s.policy.serviceaccount=default
        k8s:io.kubernetes.pod.namespace=default

```


#### BPF Policy Get 2838

```
POLICY   DIRECTION   IDENTITY   PORT/PROTO   PROXY PORT   AUTH TYPE   BYTES   PACKETS   PREFIX   
Allow    Ingress     0          ANY          NONE         disabled    -       -         0        
Allow    Ingress     1          ANY          NONE         disabled    1798    21        0        
Allow    Egress      0          ANY          NONE         disabled    -       -         0        

```


#### BPF CT List 2838

```
Invalid argument: unknown type 2838
```


#### Endpoint Get 2838

```
[
  {
    "id": 2838,
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
          "name": "endpoint-2838-regeneration-recovery",
          "status": {
            "last-failure-timestamp": "0001-01-01T00:00:00.000Z",
            "last-success-timestamp": "0001-01-01T00:00:00.000Z"
          },
          "uuid": "c5f1671b-ca5f-4a27-89cd-157096230016"
        },
        {
          "configuration": {
            "error-retry": true,
            "interval": "5m0s"
          },
          "name": "resolve-identity-2838",
          "status": {
            "last-failure-timestamp": "0001-01-01T00:00:00.000Z",
            "last-success-timestamp": "2025-08-03T14:22:07.935Z",
            "success-count": 1
          },
          "uuid": "003f3261-72c9-41f6-80a1-e52a93f9187b"
        },
        {
          "configuration": {
            "error-retry": true,
            "interval": "15m0s"
          },
          "name": "sync-policymap-2838",
          "status": {
            "last-failure-timestamp": "0001-01-01T00:00:00.000Z",
            "last-success-timestamp": "2025-08-03T14:22:13.824Z",
            "success-count": 1
          },
          "uuid": "753b9a63-b52a-4dc7-bd2e-2144fb42c038"
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
          "timestamp": "2025-08-03T14:24:04Z"
        }
      ],
      "networking": {
        "addressing": [
          {
            "ipv4": "10.0.0.203",
            "ipv4-pool-name": "default"
          }
        ],
        "host-mac": "46:47:25:fa:18:58",
        "interface-index": 96,
        "interface-name": "lxc_health",
        "mac": "86:21:73:08:46:3d"
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


#### Endpoint Health 2838

```
Overall Health:   OK
BPF Health:       OK
Policy Health:    OK
Connected:        yes

```


#### Endpoint Log 2838

```
Timestamp              Status   State                   Message
2025-08-03T14:24:04Z   OK       ready                   Successfully regenerated endpoint program (Reason: periodic endpoint regeneration)
2025-08-03T14:24:04Z   OK       ready                   Completed endpoint regeneration with no pending regeneration requests
2025-08-03T14:24:04Z   OK       regenerating            Regenerating endpoint: periodic endpoint regeneration
2025-08-03T14:24:04Z   OK       waiting-to-regenerate   Triggering endpoint regeneration due to periodic endpoint regeneration
2025-08-03T14:22:13Z   OK       ready                   Successfully regenerated endpoint program (Reason: Configuration or devices changed)
2025-08-03T14:22:13Z   OK       ready                   Completed endpoint regeneration with no pending regeneration requests
2025-08-03T14:22:13Z   OK       regenerating            Regenerating endpoint: Configuration or devices changed
2025-08-03T14:22:13Z   OK       waiting-to-regenerate   Successfully regenerated endpoint program (Reason: updated security labels)
2025-08-03T14:22:10Z   OK       waiting-to-regenerate   Triggering endpoint regeneration due to Configuration or devices changed
2025-08-03T14:22:07Z   OK       regenerating            Regenerating endpoint: updated security labels
2025-08-03T14:22:07Z   OK       waiting-to-regenerate   Triggering endpoint regeneration due to updated security labels
2025-08-03T14:22:07Z   OK       ready                   Set identity for this endpoint
2025-08-03T14:22:06Z   OK       waiting-for-identity    Endpoint creation

```


#### Identity get 4

```
ID   LABELS
4    reserved:health

```


#### Service list

```
ID   Frontend                 Service Type   Backend                                 
1    10.96.0.1:443/TCP        ClusterIP      1 => 91.217.196.189:6443/TCP (active)   
5    10.96.0.10:53/UDP        ClusterIP      1 => 10.0.0.220:53/UDP (active)         
                                             2 => 10.0.1.184:53/UDP (active)         
6    10.96.0.10:53/TCP        ClusterIP      1 => 10.0.0.220:53/TCP (active)         
                                             2 => 10.0.1.184:53/TCP (active)         
7    10.96.0.10:9153/TCP      ClusterIP      1 => 10.0.0.220:9153/TCP (active)       
                                             2 => 10.0.1.184:9153/TCP (active)       
11   10.105.233.177:443/TCP   ClusterIP      1 => 10.0.1.156:10250/TCP (active)      
12   10.96.196.29:80/TCP      ClusterIP      1 => 10.0.1.78:8081/TCP (active)        
13   10.111.74.126:443/TCP    ClusterIP      1 => 91.217.196.189:4244/TCP (active)   
14   10.100.166.190:80/TCP    ClusterIP      1 => 10.0.0.43:4245/TCP (active)        
```

#### Policy get

```
:
 []
Revision: 1

```


#### Cilium memory map


```
00400000-0399e000 r-xp 00000000 00:7a 533522                             /usr/bin/cilium-agent
0399e000-07c62000 r--p 0359e000 00:7a 533522                             /usr/bin/cilium-agent
07c62000-07e1a000 rw-p 07862000 00:7a 533522                             /usr/bin/cilium-agent
07e1a000-083a0000 rw-p 00000000 00:00 0 
c000000000-c005400000 rw-p 00000000 00:00 0 
c005400000-c008000000 ---p 00000000 00:00 0 
7f4e4d30a000-7f4e4d34a000 rw-p 00000000 00:00 0 
7f4e4d34a000-7f4e4d38b000 rw-s 00000000 00:0e 12541                      anon_inode:[perf_event]
7f4e4d38b000-7f4e4d3cc000 rw-s 00000000 00:0e 12541                      anon_inode:[perf_event]
7f4e4d3cc000-7f4e4d40d000 rw-s 00000000 00:0e 12541                      anon_inode:[perf_event]
7f4e4d40d000-7f4e4d44e000 rw-s 00000000 00:0e 12541                      anon_inode:[perf_event]
7f4e4d44e000-7f4e4d48f000 rw-s 00000000 00:0e 12541                      anon_inode:[perf_event]
7f4e4d48f000-7f4e4d4d0000 rw-s 00000000 00:0e 12541                      anon_inode:[perf_event]
7f4e4d4d0000-7f4e4d4e1000 rw-p 00000000 00:00 0 
7f4e4d4e1000-7f4e4d522000 rw-s 00000000 00:0e 12541                      anon_inode:[perf_event]
7f4e4d522000-7f4e4d563000 rw-s 00000000 00:0e 12541                      anon_inode:[perf_event]
7f4e4d563000-7f4e4d565000 rw-s 00000000 00:0e 12541                      anon_inode:[perf_event]
7f4e4d565000-7f4e4d567000 rw-s 00000000 00:0e 12541                      anon_inode:[perf_event]
7f4e4d567000-7f4e4d569000 rw-s 00000000 00:0e 12541                      anon_inode:[perf_event]
7f4e4d569000-7f4e4d56b000 rw-s 00000000 00:0e 12541                      anon_inode:[perf_event]
7f4e4d56b000-7f4e4d56d000 rw-s 00000000 00:0e 12541                      anon_inode:[perf_event]
7f4e4d56d000-7f4e4d56f000 rw-s 00000000 00:0e 12541                      anon_inode:[perf_event]
7f4e4d56f000-7f4e4d571000 rw-s 00000000 00:0e 12541                      anon_inode:[perf_event]
7f4e4d571000-7f4e4d573000 rw-s 00000000 00:0e 12541                      anon_inode:[perf_event]
7f4e4d573000-7f4e4dbe9000 rw-p 00000000 00:00 0 
7f4e4dbe9000-7f4e4dce9000 rw-p 00000000 00:00 0 
7f4e4dce9000-7f4e4dcfa000 rw-p 00000000 00:00 0 
7f4e4dcfa000-7f4e4fcfa000 rw-p 00000000 00:00 0 
7f4e4fcfa000-7f4e5fe7a000 ---p 00000000 00:00 0 
7f4e5fe7a000-7f4e5fe7b000 rw-p 00000000 00:00 0 
7f4e5fe7b000-7f4e7fe7a000 ---p 00000000 00:00 0 
7f4e7fe7a000-7f4e7fe7b000 rw-p 00000000 00:00 0 
7f4e7fe7b000-7f4e91d2a000 ---p 00000000 00:00 0 
7f4e91d2a000-7f4e91d2b000 rw-p 00000000 00:00 0 
7f4e91d2b000-7f4e94100000 ---p 00000000 00:00 0 
7f4e94100000-7f4e94101000 rw-p 00000000 00:00 0 
7f4e94101000-7f4e9457a000 ---p 00000000 00:00 0 
7f4e9457a000-7f4e9457b000 rw-p 00000000 00:00 0 
7f4e9457b000-7f4e945fa000 ---p 00000000 00:00 0 
7f4e945fa000-7f4e9465a000 rw-p 00000000 00:00 0 
7fffb7855000-7fffb7876000 rw-p 00000000 00:00 0                          [stack]
7fffb7898000-7fffb789c000 r--p 00000000 00:00 0                          [vvar]
7fffb789c000-7fffb789e000 r-xp 00000000 00:00 0                          [vdso]
ffffffffff600000-ffffffffff601000 --xp 00000000 00:00 0                  [vsyscall]

```


#### ipam

```
(string) (len=6) "owners"
(map[ipam.Pool]map[string]string) (len=1) {
 (ipam.Pool) (len=7) default: (map[string]string) (len=5) {
  (string) (len=9) "10.0.0.43": (string) (len=52) "kube-system/hubble-relay-6b7b5877f4-vfr4c [restored]",
  (string) (len=10) "10.0.0.220": (string) (len=47) "kube-system/coredns-54558b56c7-zth5g [restored]",
  (string) (len=10) "10.0.0.236": (string) (len=27) "default/dnsutils [restored]",
  (string) (len=10) "10.0.0.124": (string) (len=6) "router",
  (string) (len=10) "10.0.0.203": (string) (len=6) "health"
 }
}
(string) (len=17) "expiration timers"
(map[ipam.timerKey]ipam.expirationTimer) {
}
(string) (len=12) "excluded ips"
(map[string]string) (len=1) {
 (string) (len=22) "default:91.217.196.189": (string) (len=7) "node-ip"
}

```


#### kvstore-locks

```
(map[string]kvstore.lockOwner) {
}

```


#### ongoing-endpoint-creations


#### Cilium encryption



#### Cilium version

```
1.18.0 274205f0 2025-07-28T15:22:50+02:00 go version go1.24.5 linux/amd64
```


#### Kernel version

```
5.15.0
```


#### Cilium status

```
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
  cilium-health-ep                                           59s ago        never        0       no error   
  ct-map-pressure                                            31s ago        never        0       no error   
  daemon-validate-config                                     59s ago        never        0       no error   
  endpoint-274-regeneration-recovery                         never          never        0       no error   
  endpoint-2838-regeneration-recovery                        never          never        0       no error   
  endpoint-33-regeneration-recovery                          never          never        0       no error   
  endpoint-342-regeneration-recovery                         never          never        0       no error   
  endpoint-398-regeneration-recovery                         never          never        0       no error   
  endpoint-gc                                                3m2s ago       never        0       no error   
  endpoint-periodic-regeneration                             1m2s ago       never        0       no error   
  ipcache-inject-labels                                      1m1s ago       never        0       no error   
  k8s-heartbeat                                              32s ago        never        0       no error   
  proxy-ports-checkpoint                                     3m1s ago       never        0       no error   
  resolve-identity-2838                                      2m59s ago      never        0       no error   
  resolve-labels-/                                           3m0s ago       never        0       no error   
  resolve-labels-default/dnsutils                            2m53s ago      never        0       no error   
  resolve-labels-kube-system/coredns-54558b56c7-zth5g        2m53s ago      never        0       no error   
  resolve-labels-kube-system/hubble-relay-6b7b5877f4-vfr4c   2m53s ago      never        0       no error   
  restoring-ep-identity (274)                                3m1s ago       never        0       no error   
  restoring-ep-identity (33)                                 3m1s ago       never        0       no error   
  restoring-ep-identity (342)                                3m1s ago       never        0       no error   
  restoring-ep-identity (398)                                3m1s ago       never        0       no error   
  sync-policymap-274                                         2m54s ago      never        0       no error   
  sync-policymap-2838                                        2m54s ago      never        0       no error   
  sync-policymap-33                                          2m54s ago      never        0       no error   
  sync-policymap-342                                         2m54s ago      never        0       no error   
  sync-policymap-398                                         2m54s ago      never        0       no error   
  sync-to-k8s-ciliumendpoint (274)                           11s ago        never        0       no error   
  sync-to-k8s-ciliumendpoint (33)                            11s ago        never        0       no error   
  sync-to-k8s-ciliumendpoint (398)                           11s ago        never        0       no error   
  sync-utime                                                 1m1s ago       never        0       no error   
  waiting-initial-global-identities-ep (274)                 3m1s ago       never        0       no error   
  waiting-initial-global-identities-ep (33)                  3m1s ago       never        0       no error   
  waiting-initial-global-identities-ep (398)                 3m1s ago       never        0       no error   
  write-cni-file                                             3m2s ago       never        0       no error   
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
Encryption:   Disabled   
```

#### Cilium environment keys

```
http-retry-timeout:0
policy-secrets-only-from-secrets-namespace:true
debug:false
bpf-lb-sock-hostns-only:false
enable-nat46x64-gateway:false
status-collector-stackdump-path:/run/cilium/state/agent.stack.gz
version:false
hubble-metrics-server-enable-tls:false
bpf-lb-proto-diff:true
hubble-metrics-server-tls-client-ca-files:
hubble-export-file-path:
local-router-ipv6:
hubble-disable-tls:false
vtep-mac:
k8s-client-qps:10
install-iptables-rules:true
envoy-http-upstream-linger-timeout:-1
enable-bgp-control-plane:false
ip-masq-agent-config-path:/etc/config/ip-masq-agent
metrics:
l2-announcements-renew-deadline:5s
bpf-distributed-lru:false
tofqdns-proxy-port:0
enable-custom-calls:false
egress-multi-home-ip-rule-compat:false
dnsproxy-concurrency-limit:0
hubble-metrics-server:
hubble-redact-http-userinfo:true
enable-ipv4-fragment-tracking:true
hubble-dynamic-metrics-config-path:
enable-ipv4-masquerade:true
proxy-max-concurrent-retries:128
ipam-cilium-node-update-rate:15s
enable-bbr:false
enable-dynamic-lifecycle-manager:false
egress-gateway-policy-map-max:16384
enable-hubble:true
trace-payloadlen:128
clustermesh-sync-timeout:1m0s
enable-node-selector-labels:false
enable-bandwidth-manager:false
cflags:
bpf-policy-map-full-reconciliation-interval:15m0s
tunnel-protocol:vxlan
hubble-flowlogs-config-path:
bpf-ct-timeout-regular-any:1m0s
dnsproxy-socket-linger-timeout:10
max-controller-interval:0
hubble-event-queue-size:0
identity-max-jitter:30s
ipv4-native-routing-cidr:10.0.0.0/16
enable-srv6:false
dynamic-lifecycle-config:[]
enable-lb-ipam:true
nat-map-stats-interval:30s
mesh-auth-mutual-listener-port:0
l2-announcements-retry-period:2s
l2-pod-announcements-interface:
bpf-events-default-rate-limit:0
connectivity-probe-frequency-ratio:0.5
bpf-neigh-global-max:524288
enable-tcx:true
node-port-range:
hubble-redact-enabled:false
ingress-secrets-namespace:
bpf-lb-acceleration:disabled
dnsproxy-lock-count:131
l2-pod-announcements-interface-pattern:
ipv4-node:auto
hubble-tls-client-ca-files:/var/lib/cilium/tls/hubble/client-ca.crt
label-prefix-file:
bpf-lb-algorithm:random
hubble-drop-events:false
k8s-client-connection-keep-alive:30s
identity-change-grace-period:5s
nodeport-addresses:
metrics-sampling-interval:5m
encrypt-node:false
hubble-export-file-max-backups:5
enable-policy-secrets-sync:true
procfs:/host/proc
enable-ipv6-fragment-tracking:true
prepend-iptables-chains:true
policy-secrets-namespace:cilium-secrets
identity-heartbeat-timeout:30m0s
clustermesh-enable-endpoint-sync:false
kube-proxy-replacement:true
k8s-client-connection-timeout:30s
enable-ipsec-xfrm-state-caching:true
hubble-monitor-events:
local-max-addr-scope:252
hubble-drop-events-interval:2m0s
node-port-acceleration:disabled
k8s-client-burst:20
hubble-export-allowlist:
encrypt-interface:
ipv6-pod-subnets:
enable-tracing:false
enable-ipv6-big-tcp:false
enable-ipsec:false
enable-source-ip-verification:true
kvstore-max-consecutive-quorum-errors:2
hubble-export-fieldmask:
ipv4-service-loopback-address:169.254.42.1
auto-create-cilium-node-resource:true
default-lb-service-ipam:lbipam
conntrack-gc-max-interval:0s
wireguard-persistent-keepalive:0s
proxy-idle-timeout-seconds:60
dnsproxy-concurrency-processing-grace-period:0s
allow-localhost:auto
operator-api-serve-addr:127.0.0.1:9234
cni-exclusive:true
enable-recorder:false
kvstore-lease-ttl:15m0s
envoy-base-id:0
remove-cilium-node-taints:true
hubble-redact-http-headers-allow:
pprof:false
bpf-nat-global-max:524288
bpf-events-drop-enabled:true
enable-active-connection-tracking:false
ipv6-cluster-alloc-cidr:f00d::/64
endpoint-gc-interval:5m0s
cluster-id:0
cmdref:
enable-l2-pod-announcements:false
hubble-redact-kafka-apikey:false
enable-cilium-endpoint-slice:false
restore:true
enable-k8s:true
envoy-access-log-buffer-size:4096
enable-ipv6-ndp:false
envoy-log:
envoy-default-log-level:
restored-proxy-ports-age-limit:15
status-collector-interval:5s
enable-cilium-health-api-server-access:
fqdn-regex-compile-lru-size:1024
annotate-k8s-node:false
config-dir:/tmp/cilium/config-map
state-dir:/var/run/cilium
identity-restore-grace-period:30s
monitor-aggregation:medium
tunnel-port:0
operator-prometheus-serve-addr::9963
max-internal-timer-delay:0s
bpf-lb-dsr-dispatch:opt
trace-payloadlen-overlay:192
bpf-events-trace-enabled:true
enable-endpoint-lockdown-on-policy-overflow:false
l2-announcements-lease-duration:15s
enable-icmp-rules:true
k8s-api-server:
tofqdns-min-ttl:0
policy-cidr-match-mode:
bpf-root:/sys/fs/bpf
bpf-lb-source-range-map-max:0
node-port-mode:
enable-egress-gateway:false
hubble-prefer-ipv6:false
route-metric:0
http-retry-count:3
ipsec-key-file:
install-uplink-routes-for-delegated-ipam:false
bpf-conntrack-accounting:false
dns-max-ips-per-restored-rule:1000
enable-host-port:false
proxy-gid:1337
bgp-router-id-allocation-ip-pool:
cni-chaining-target:
tofqdns-dns-reject-response-code:refused
cluster-health-port:4240
identity-allocation-sync-interval:5m0s
policy-queue-size:100
ipv4-pod-subnets:
hubble-metrics:
vtep-cidr:
tofqdns-proxy-response-max-delay:100ms
enable-k8s-networkpolicy:true
agent-health-require-k8s-connectivity:true
lb-retry-backoff-max:50ms
bypass-ip-availability-upon-restore:false
enable-k8s-endpoint-slice:true
clustermesh-config:/var/lib/cilium/clustermesh/
enable-monitor:true
enable-standalone-dns-proxy:false
derive-masq-ip-addr-from-device:
hubble-skip-unknown-cgroup-ids:true
enable-cilium-clusterwide-network-policy:true
local-router-ipv4:
enable-vtep:false
node-port-bind-protection:true
static-cnp-path:
proxy-initial-fetch-timeout:30
iptables-lock-timeout:5s
synchronize-k8s-nodes:true
bpf-lb-algorithm-annotation:false
datapath-mode:veth
bpf-node-map-max:16384
proxy-xff-num-trusted-hops-ingress:0
agent-labels:
policy-accounting:true
enable-encryption-strict-mode:false
enable-dynamic-config:true
exclude-node-label-patterns:
proxy-portrange-max:20000
bpf-ct-timeout-regular-tcp:2h13m20s
allocator-list-timeout:3m0s
bpf-filter-priority:1
ipv4-service-range:auto
bpf-events-default-burst-limit:0
pprof-port:6060
encryption-strict-mode-cidr:
vtep-endpoint:
http-normalize-path:true
enable-hubble-open-metrics:false
api-rate-limit:
mesh-auth-signal-backoff-duration:1s
install-no-conntrack-iptables-rules:false
bpf-policy-stats-map-max:65536
k8s-service-proxy-name:
monitor-queue-size:0
enable-internal-traffic-policy:true
enable-health-check-loadbalancer-ip:false
clustermesh-enable-mcs-api:false
bpf-lb-service-map-max:0
lb-state-file-interval:1s
bpf-lb-rss-ipv6-src-cidr:
cni-log-file:/var/run/cilium/cilium-cni.log
node-labels:
proxy-connect-timeout:2
node-encryption-opt-out-labels:node-role.kubernetes.io/control-plane
lib-dir:/var/lib/cilium
bpf-lb-ipip-sock-mark:false
tofqdns-enable-dns-compression:true
agent-health-port:9879
ipsec-key-rotation-duration:5m0s
ipv4-range:auto
allow-unsafe-policy-skb-usage:false
lb-pressure-metrics-interval:5m0s
enable-ipv4-egress-gateway:false
use-cilium-internal-ip-for-ipsec:false
k8s-heartbeat-timeout:30s
ipv6-range:auto
enable-health-checking:true
enable-policy:default
config-sources-overrides:{"allowConfigKeys":[],"denyConfigKeys":[]}
envoy-keep-cap-netbindservice:false
allow-icmp-frag-needed:true
mesh-auth-rotated-identities-queue-size:1024
force-device-detection:false
node-port-algorithm:
enable-bbr-hostns-only:false
bpf-sock-rev-map-max:0
bpf-lb-rss-ipv4-src-cidr:
vlan-bpf-bypass:
enable-bpf-masquerade:false
health-check-icmp-failure-threshold:3
bpf-ct-timeout-regular-tcp-syn:1m0s
hubble-network-policy-correlation-enabled:true
enable-node-port:false
hubble-export-file-compress:false
identity-gc-interval:15m0s
preallocate-bpf-maps:false
cni-chaining-mode:none
enable-metrics:true
log-opt:
http-stream-idle-timeout:300
mesh-auth-queue-size:1024
hubble-export-denylist:
enable-unreachable-routes:false
hubble-socket-path:/var/run/cilium/hubble.sock
mesh-auth-spire-admin-socket:
enable-ingress-controller:false
enable-envoy-config:false
external-envoy-proxy:true
crd-wait-timeout:5m0s
bpf-ct-timeout-service-tcp-grace:1m0s
enable-svc-source-range-check:true
dnsproxy-enable-transparent-mode:true
bpf-lb-mode:snat
devices:
kube-proxy-replacement-healthz-bind-address:
status-collector-probe-check-timeout:5m0s
enable-endpoint-health-checking:true
enable-route-mtu-for-cni-chaining:false
debug-verbose:
enable-ipv6:false
ipv6-node:auto
tofqdns-max-deferred-connection-deletes:10000
bpf-ct-global-tcp-max:524288
enable-ipsec-encrypted-overlay:false
iptables-random-fully:false
exclude-local-address:
enable-gateway-api:false
certificates-directory:/var/run/cilium/certs
disable-envoy-version-check:false
service-no-backend-response:reject
bpf-lb-source-range-all-types:false
bpf-fragments-map-max:8192
cni-external-routing:false
container-ip-local-reserved-ports:auto
tofqdns-preallocate-identities:true
bpf-lb-affinity-map-max:0
bpf-lb-mode-annotation:false
ipv6-native-routing-cidr:
hubble-recorder-sink-queue-size:1024
enable-l2-announcements:false
enable-stale-cilium-endpoint-cleanup:true
enable-gops:true
custom-cni-conf:false
ignore-flags-drift-checker:
gateway-api-secrets-namespace:
identity-management-mode:agent
policy-trigger-interval:1s
k8s-kubeconfig-path:
nodes-gc-interval:5m0s
enable-ipv4-big-tcp:false
set-cilium-is-up-condition:true
bpf-lb-map-max:65536
lb-state-file:
hubble-redact-http-urlquery:false
proxy-max-requests-per-connection:0
enable-identity-mark:true
log-system-load:false
bpf-lb-external-clusterip:false
config:
dnsproxy-insecure-skip-transparent-mode-check:false
tofqdns-idle-connection-grace-period:0s
enable-host-firewall:false
policy-default-local-cluster:false
bpf-ct-timeout-regular-tcp-fin:10s
hubble-metrics-server-tls-cert-file:
identity-allocation-mode:crd
dns-policy-unload-on-shutdown:false
bpf-map-dynamic-size-ratio:0.0025
hubble-metrics-server-tls-key-file:
unmanaged-pod-watcher-interval:15
mke-cgroup-mount:
wireguard-track-all-ips-fallback:false
proxy-prometheus-port:0
bpf-lb-sock-terminate-pod-connections:true
identity-allocation-timeout:2m0s
enable-ipv4:true
monitor-aggregation-interval:5s
set-cilium-node-taints:true
vtep-mask:
bpf-lb-sock:false
mtu:0
pprof-address:localhost
gops-port:9890
endpoint-regen-interval:2m0s
bpf-policy-map-max:16384
enable-cilium-network-policy:true
enable-xt-socket-fallback:true
http-max-grpc-timeout:0
status-collector-warning-threshold:15s
enable-hubble-recorder-api:true
direct-routing-skip-unreachable:false
agent-liveness-update-interval:1s
labels:
enable-host-legacy-routing:false
srv6-encap-mode:reduced
enable-l2-neigh-discovery:false
proxy-xff-num-trusted-hops-egress:0
enable-ip-masq-agent:false
ipam-default-ip-pool:default
http-request-timeout:3600
policy-audit-mode:false
bpf-map-event-buffers:
fixed-identity-mapping:
enable-pmtu-discovery:false
k8s-require-ipv6-pod-cidr:false
bpf-ct-global-any-max:262144
mesh-auth-mutual-connect-timeout:5s
enable-k8s-api-discovery:false
ipv6-service-range:auto
lrp-address-matcher-cidrs:
direct-routing-device:
hubble-drop-events-reasons:
hubble-listen-address::4244
mesh-auth-gc-interval:5m0s
enable-sctp:false
bpf-events-policy-verdict-enabled:true
bpf-lb-maglev-hash-seed:JLfvgnHc2kaSUFaI
enable-health-check-nodeport:true
max-connected-clusters:255
http-idle-timeout:0
enable-auto-protect-node-port-range:true
enable-bpf-tproxy:false
envoy-config-retry-interval:15s
bpf-lb-maglev-map-max:0
disable-endpoint-crd:false
agent-not-ready-taint-key:node.cilium.io/agent-not-ready
write-cni-conf-when-ready:/host/etc/cni/net.d/05-cilium.conflist
tofqdns-pre-cache:
hubble-redact-http-headers-deny:
enable-bpf-clock-probe:false
trace-sock:true
envoy-secrets-namespace:
disable-external-ip-mitigation:false
bpf-auth-map-max:524288
auto-direct-node-routes:false
monitor-aggregation-flags:all
enable-external-ips:false
mesh-auth-spiffe-trust-domain:spiffe.cilium
conntrack-gc-interval:0s
tofqdns-endpoint-max-ip-per-hostname:1000
envoy-policy-restore-timeout:3m0s
socket-path:/var/run/cilium/cilium.sock
enable-non-default-deny-policies:true
disable-iptables-feeder-rules:
cilium-endpoint-gc-interval:5m0s
hubble-tls-key-file:/var/lib/cilium/tls/hubble/server.key
dnsproxy-lock-timeout:500ms
enable-bgp-control-plane-status-report:true
enable-mke:false
bpf-lb-service-backend-map-max:0
k8s-namespace:kube-system
enable-ipsec-key-watcher:true
k8s-api-server-urls:
enable-local-node-route:true
enable-local-redirect-policy:true
enable-ipv6-masquerade:true
tunnel-source-port-range:0-0
nat-map-stats-entries:32
endpoint-queue-size:25
bpf-ct-timeout-service-any:1m0s
enable-session-affinity:true
egress-masquerade-interfaces:
hubble-tls-cert-file:/var/lib/cilium/tls/hubble/server.crt
enable-xdp-prefilter:false
boot-id-file:/proc/sys/kernel/random/boot_id
mesh-auth-enabled:true
enable-wireguard:false
log-driver:
bpf-lb-maglev-table-size:16381
egress-gateway-reconciliation-trigger-interval:1s
enable-endpoint-routes:false
underlay-protocol:ipv4
enable-l7-proxy:true
hubble-recorder-storage-path:/var/run/cilium/pcaps
bpf-lb-nat46x64:false
enable-cilium-api-server-access:
multicast-enabled:false
proxy-portrange-min:10000
status-collector-failure-threshold:1m0s
ipam:kubernetes
use-full-tls-context:false
enable-drift-checker:true
kvstore-opt:
cgroup-root:/run/cilium/cgroupv2
hubble-event-buffer-capacity:4095
standalone-dns-proxy-server-port:40045
enable-service-topology:false
bpf-ct-timeout-service-tcp:2h13m20s
hubble-export-file-max-size-mb:10
prometheus-serve-addr:
config-sources:[{"kind":"config-map","namespace":"kube-system","name":"cilium-config"}]
enable-masquerade-to-route-source:false
proxy-max-connection-duration-seconds:0
proxy-admin-port:0
bgp-router-id-allocation-mode:default
cluster-name:default
controller-group-metrics:
enable-ipip-termination:false
encryption-strict-mode-allow-remote-node-identities:false
ipv6-mcast-device:
ipam-multi-pool-pre-allocation:
read-cni-conf:
k8s-require-ipv4-pod-cidr:false
lb-retry-backoff-min:50ms
k8s-sync-timeout:3m0s
keep-config:false
envoy-config-timeout:2m0s
enable-well-known-identities:false
bpf-lb-rev-nat-map-max:0
endpoint-bpf-prog-watchdog-interval:30s
kvstore:
routing-mode:tunnel
```

