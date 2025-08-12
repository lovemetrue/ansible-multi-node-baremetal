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
