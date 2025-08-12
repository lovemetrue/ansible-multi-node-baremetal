xdp:

tc:
ens18(2) clsact/ingress cil_from_netdev-ens18 id 7301
ens18(2) clsact/egress cil_to_netdev-ens18 id 7305
cilium_net(3) clsact/ingress cil_to_host-cilium_net id 7288
cilium_host(4) clsact/ingress cil_to_host-cilium_host id 7193
cilium_host(4) clsact/egress cil_from_host-cilium_host id 7196
cilium_vxlan(5) clsact/ingress cil_from_overlay-cilium_vxlan id 7153
cilium_vxlan(5) clsact/egress cil_to_overlay-cilium_vxlan id 7154
lxcf57d951d1bb3(68) clsact/ingress cil_from_container-lxcf57d951d1bb3 id 7284
lxc5ca0daa43914(90) clsact/ingress cil_from_container-lxc5ca0daa43914 id 7264
lxcf9e134da9662(94) clsact/ingress cil_from_container-lxcf9e134da9662 id 7273
lxc_health(96) clsact/ingress cil_from_container-lxc_health id 7245

flow_dissector:

netfilter:

