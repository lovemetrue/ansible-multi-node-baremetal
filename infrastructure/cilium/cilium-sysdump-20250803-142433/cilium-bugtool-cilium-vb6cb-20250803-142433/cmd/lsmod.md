Module                  Size  Used by
tcp_diag               16384  0
dummy                  16384  0
ipt_REJECT             16384  0
nf_reject_ipv4         16384  1 ipt_REJECT
udp_diag               16384  0
inet_diag              24576  2 tcp_diag,udp_diag
xt_statistic           16384  3
xfrm_user              40960  1
xfrm_algo              16384  1 xfrm_user
cls_bpf                24576  11
sch_ingress            16384  8
vxlan                  86016  0
ip6_udp_tunnel         16384  1 vxlan
udp_tunnel             20480  1 vxlan
xt_TPROXY              20480  2
nf_tproxy_ipv6         20480  1 xt_TPROXY
nf_tproxy_ipv4         20480  1 xt_TPROXY
xt_CT                  16384  5
veth                   32768  0
xt_socket              16384  1
nf_socket_ipv4         16384  1 xt_socket
nf_socket_ipv6         20480  1 xt_socket
ip6table_filter        16384  0
ip6table_raw           16384  0
ip6table_mangle        16384  0
ip6_tables             32768  3 ip6table_filter,ip6table_raw,ip6table_mangle
iptable_filter         16384  0
iptable_raw            16384  0
iptable_mangle         16384  0
iptable_nat            16384  0
ip_set                 53248  0
nf_conntrack_netlink    49152  0
xt_addrtype            16384  2
xt_nat                 16384  13
xt_MASQUERADE          20480  3
xt_mark                16384  6
xt_nfacct              16384  2
xt_tcpudp              20480  10
nft_chain_nat          16384  6
nf_nat                 49152  4 xt_nat,nft_chain_nat,iptable_nat,xt_MASQUERADE
nfnetlink_acct         16384  3 xt_nfacct
xt_conntrack           16384  20
nf_conntrack          172032  6 xt_conntrack,nf_nat,xt_nat,nf_conntrack_netlink,xt_CT,xt_MASQUERADE
nf_defrag_ipv6         24576  3 nf_conntrack,xt_socket,xt_TPROXY
nf_defrag_ipv4         16384  3 nf_conntrack,xt_socket,xt_TPROXY
xt_comment             16384  108
nft_compat             20480  175
nft_counter            16384  120
nf_tables             266240  348 nft_compat,nft_counter,nft_chain_nat
nfnetlink              20480  6 nft_compat,nfnetlink_acct,nf_conntrack_netlink,nf_tables,ip_set
tls                   114688  0
scsi_transport_iscsi   139264  1
intel_rapl_msr         20480  0
intel_rapl_common      40960  1 intel_rapl_msr
kvm_intel             372736  0
kvm                  1040384  1 kvm_intel
rapl                   20480  0
joydev                 32768  0
input_leds             16384  0
serio_raw              20480  0
qemu_fw_cfg            20480  0
mac_hid                16384  0
sunrpc                585728  1
binfmt_misc            24576  1
sch_fq_codel           20480  2
dm_multipath           40960  0
scsi_dh_rdac           20480  0
scsi_dh_emc            16384  0
scsi_dh_alua           20480  0
msr                    16384  0
overlay               151552  13
br_netfilter           32768  0
bridge                311296  1 br_netfilter
stp                    16384  1 bridge
llc                    16384  2 bridge,stp
efi_pstore             16384  0
ip_tables              32768  4 iptable_filter,iptable_raw,iptable_nat,iptable_mangle
x_tables               53248  23 ip6table_filter,xt_conntrack,xt_statistic,ip6table_raw,iptable_filter,nft_compat,xt_socket,xt_tcpudp,xt_addrtype,xt_nat,xt_comment,ip6_tables,xt_TPROXY,ipt_REJECT,xt_nfacct,xt_CT,iptable_raw,ip_tables,iptable_nat,ip6table_mangle,xt_MASQUERADE,iptable_mangle,xt_mark
autofs4                49152  2
btrfs                1564672  0
blake2b_generic        20480  0
zstd_compress         229376  1 btrfs
raid10                 69632  0
raid456               163840  0
async_raid6_recov      24576  1 raid456
async_memcpy           20480  2 raid456,async_raid6_recov
async_pq               24576  2 raid456,async_raid6_recov
async_xor              20480  3 async_pq,raid456,async_raid6_recov
async_tx               20480  5 async_pq,async_memcpy,async_xor,raid456,async_raid6_recov
xor                    24576  2 async_xor,btrfs
raid6_pq              122880  4 async_pq,btrfs,raid456,async_raid6_recov
libcrc32c              16384  5 nf_conntrack,nf_nat,btrfs,nf_tables,raid456
raid1                  49152  0
raid0                  24576  0
multipath              20480  0
linear                 20480  0
hid_generic            16384  0
bochs                  16384  0
drm_vram_helper        24576  1 bochs
crct10dif_pclmul       16384  1
drm_ttm_helper         16384  2 bochs,drm_vram_helper
ttm                    86016  2 drm_vram_helper,drm_ttm_helper
crc32_pclmul           16384  0
drm_kms_helper        315392  4 bochs,drm_vram_helper
ghash_clmulni_intel    16384  0
sha256_ssse3           32768  0
syscopyarea            16384  1 drm_kms_helper
sha1_ssse3             32768  0
sysfillrect            20480  1 drm_kms_helper
aesni_intel           376832  0
sysimgblt              16384  1 drm_kms_helper
fb_sys_fops            16384  1 drm_kms_helper
crypto_simd            16384  1 aesni_intel
cryptd                 24576  2 crypto_simd,ghash_clmulni_intel
cec                    65536  1 drm_kms_helper
usbhid                 65536  0
virtio_net             61440  0
rc_core                65536  1 cec
net_failover           20480  1 virtio_net
psmouse               184320  0
drm                   622592  6 drm_kms_helper,bochs,drm_vram_helper,drm_ttm_helper,ttm
failover               16384  1 net_failover
hid                   151552  2 usbhid,hid_generic
virtio_blk             20480  1
i2c_piix4              32768  0
pata_acpi              16384  0
