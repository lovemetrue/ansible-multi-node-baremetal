xdp:

tc:
ens18(2) clsact/ingress cil_from_netdev-ens18 id 7000
ens18(2) clsact/egress cil_to_netdev-ens18 id 6994
cilium_net(3) clsact/ingress cil_to_host-cilium_net id 6988
cilium_host(4) clsact/ingress cil_to_host-cilium_host id 6969
cilium_host(4) clsact/egress cil_from_host-cilium_host id 6978
cilium_vxlan(5) clsact/ingress cil_from_overlay-cilium_vxlan id 6844
cilium_vxlan(5) clsact/egress cil_to_overlay-cilium_vxlan id 6848
lxcb16c490a744c(66) clsact/ingress cil_from_container-lxcb16c490a744c id 6916
lxc1a9e66ab2e3d(88) clsact/ingress cil_from_container-lxc1a9e66ab2e3d id 6905
lxc9f888d020df3(92) clsact/ingress cil_from_container-lxc9f888d020df3 id 6891
lxc_health(94) clsact/ingress cil_from_container-lxc_health id 6930

flow_dissector:

netfilter:

