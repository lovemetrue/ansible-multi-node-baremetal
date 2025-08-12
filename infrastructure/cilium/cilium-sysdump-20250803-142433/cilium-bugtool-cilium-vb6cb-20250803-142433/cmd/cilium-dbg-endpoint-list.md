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
