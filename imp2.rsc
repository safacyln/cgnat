/ip firewall nat
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=udp src-address=100.49.15.0/29 to-addresses=217.177.0.104/29 \
    to-ports=1000-2499
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=tcp src-address=100.49.15.0/29 to-addresses=217.177.0.104/29 \
    to-ports=1000-2499
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=icmp src-address=100.49.15.0/29 to-addresses=217.177.0.104/29
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=udp src-address=100.49.15.8/29 to-addresses=217.177.0.104/29 \
    to-ports=2500-3999
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=tcp src-address=100.49.15.8/29 to-addresses=217.177.0.104/29 \
    to-ports=2500-3999
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=icmp src-address=100.49.15.8/29 to-addresses=217.177.0.104/29
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=udp src-address=100.49.15.16/29 to-addresses=217.177.0.104/29 \
    to-ports=4000-5499
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=tcp src-address=100.49.15.16/29 to-addresses=217.177.0.104/29 \
    to-ports=4000-5499
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=icmp src-address=100.49.15.16/29 to-addresses=217.177.0.104/29
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=udp src-address=100.49.15.24/29 to-addresses=217.177.0.104/29 \
    to-ports=5500-6999
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=tcp src-address=100.49.15.24/29 to-addresses=217.177.0.104/29 \
    to-ports=5500-6999
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=icmp src-address=100.49.15.24/29 to-addresses=217.177.0.104/29
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=udp src-address=100.49.15.32/29 to-addresses=217.177.0.104/29 \
    to-ports=7000-8499
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=tcp src-address=100.49.15.32/29 to-addresses=217.177.0.104/29 \
    to-ports=7000-8499
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=icmp src-address=100.49.15.32/29 to-addresses=217.177.0.104/29
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=udp src-address=100.49.15.40/29 to-addresses=217.177.0.104/29 \
    to-ports=8500-9999
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=tcp src-address=100.49.15.40/29 to-addresses=217.177.0.104/29 \
    to-ports=8500-9999
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=icmp src-address=100.49.15.40/29 to-addresses=217.177.0.104/29
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=udp src-address=100.49.15.48/29 to-addresses=217.177.0.104/29 \
    to-ports=10000-11499
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=tcp src-address=100.49.15.48/29 to-addresses=217.177.0.104/29 \
    to-ports=10000-11499
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=icmp src-address=100.49.15.48/29 to-addresses=217.177.0.104/29
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=udp src-address=100.49.15.56/29 to-addresses=217.177.0.104/29 \
    to-ports=11500-12999
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=tcp src-address=100.49.15.56/29 to-addresses=217.177.0.104/29 \
    to-ports=11500-12999
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=icmp src-address=100.49.15.56/29 to-addresses=217.177.0.104/29
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=udp src-address=100.49.15.64/29 to-addresses=217.177.0.104/29 \
    to-ports=13000-14499
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=tcp src-address=100.49.15.64/29 to-addresses=217.177.0.104/29 \
    to-ports=13000-14499
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=icmp src-address=100.49.15.64/29 to-addresses=217.177.0.104/29
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=udp src-address=100.49.15.72/29 to-addresses=217.177.0.104/29 \
    to-ports=14500-15999
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=tcp src-address=100.49.15.72/29 to-addresses=217.177.0.104/29 \
    to-ports=14500-15999
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=icmp src-address=100.49.15.72/29 to-addresses=217.177.0.104/29
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=udp src-address=100.49.15.80/29 to-addresses=217.177.0.104/29 \
    to-ports=16000-17499
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=tcp src-address=100.49.15.80/29 to-addresses=217.177.0.104/29 \
    to-ports=16000-17499
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=icmp src-address=100.49.15.80/29 to-addresses=217.177.0.104/29
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=udp src-address=100.49.15.88/29 to-addresses=217.177.0.104/29 \
    to-ports=17500-18999
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=tcp src-address=100.49.15.88/29 to-addresses=217.177.0.104/29 \
    to-ports=17500-18999
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=icmp src-address=100.49.15.88/29 to-addresses=217.177.0.104/29
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=udp src-address=100.49.15.96/29 to-addresses=217.177.0.104/29 \
    to-ports=19000-20499
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=tcp src-address=100.49.15.96/29 to-addresses=217.177.0.104/29 \
    to-ports=19000-20499
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=icmp src-address=100.49.15.96/29 to-addresses=217.177.0.104/29
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=udp src-address=100.49.15.104/29 to-addresses=217.177.0.104/29 \
    to-ports=20500-21999
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=tcp src-address=100.49.15.104/29 to-addresses=217.177.0.104/29 \
    to-ports=20500-21999
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=icmp src-address=100.49.15.104/29 to-addresses=217.177.0.104/29
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=udp src-address=100.49.15.112/29 to-addresses=217.177.0.104/29 \
    to-ports=22000-23499
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=tcp src-address=100.49.15.112/29 to-addresses=217.177.0.104/29 \
    to-ports=22000-23499
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=udp src-address=100.49.15.120/29 to-addresses=217.177.0.104/29 \
    to-ports=23500-24999
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=tcp src-address=100.49.15.120/29 to-addresses=217.177.0.104/29 \
    to-ports=23500-24999
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=icmp src-address=100.49.15.120/29 to-addresses=217.177.0.104/29
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=udp src-address=100.49.15.128/29 to-addresses=217.177.0.104/29 \
    to-ports=25000-26499
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=tcp src-address=100.49.15.128/29 to-addresses=217.177.0.104/29 \
    to-ports=25000-26499
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=icmp src-address=100.49.15.128/29 to-addresses=217.177.0.104/29
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=udp src-address=100.49.15.136/29 to-addresses=217.177.0.104/29 \
    to-ports=26500-27999
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=tcp src-address=100.49.15.136/29 to-addresses=217.177.0.104/29 \
    to-ports=26500-27999
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=icmp src-address=100.49.15.136/29 to-addresses=217.177.0.104/29
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=udp src-address=100.49.15.144/29 to-addresses=217.177.0.104/29 \
    to-ports=28000-29499
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=tcp src-address=100.49.15.144/29 to-addresses=217.177.0.104/29 \
    to-ports=28000-29499
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=icmp src-address=100.49.15.144/29 to-addresses=217.177.0.104/29
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=udp src-address=100.49.15.152/29 to-addresses=217.177.0.104/29 \
    to-ports=29500-30999
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=tcp src-address=100.49.15.152/29 to-addresses=217.177.0.104/29 \
    to-ports=29500-30999
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=icmp src-address=100.49.15.152/29 to-addresses=217.177.0.104/29
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=udp src-address=100.49.15.160/29 to-addresses=217.177.0.104/29 \
    to-ports=31000-32499
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=tcp src-address=100.49.15.160/29 to-addresses=217.177.0.104/29 \
    to-ports=31000-32499
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=icmp src-address=100.49.15.160/29 to-addresses=217.177.0.104/29
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=udp src-address=100.49.15.168/29 to-addresses=217.177.0.104/29 \
    to-ports=32500-33999
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=tcp src-address=100.49.15.168/29 to-addresses=217.177.0.104/29 \
    to-ports=32500-33999
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=icmp src-address=100.49.15.168/29 to-addresses=217.177.0.104/29
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=udp src-address=100.49.15.176/29 to-addresses=217.177.0.104/29 \
    to-ports=34000-35499
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=tcp src-address=100.49.15.176/29 to-addresses=217.177.0.104/29 \
    to-ports=34000-35499
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=icmp src-address=100.49.15.176/29 to-addresses=217.177.0.104/29
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=udp src-address=100.49.15.184/29 to-addresses=217.177.0.104/29 \
    to-ports=35500-36999
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=tcp src-address=100.49.15.184/29 to-addresses=217.177.0.104/29 \
    to-ports=35500-36999
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=icmp src-address=100.49.15.184/29 to-addresses=217.177.0.104/29
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=udp src-address=100.49.15.192/29 to-addresses=217.177.0.104/29 \
    to-ports=37000-38499
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=tcp src-address=100.49.15.192/29 to-addresses=217.177.0.104/29 \
    to-ports=37000-38499
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=icmp src-address=100.49.15.192/29 to-addresses=217.177.0.104/29
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=udp src-address=100.49.15.200/29 to-addresses=217.177.0.104/29 \
    to-ports=38500-39999
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=tcp src-address=100.49.15.200/29 to-addresses=217.177.0.104/29 \
    to-ports=38500-39999
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=icmp src-address=100.49.15.200/29 to-addresses=217.177.0.104/29
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=udp src-address=100.49.15.208/29 to-addresses=217.177.0.104/29 \
    to-ports=40000-41499
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=tcp src-address=100.49.15.208/29 to-addresses=217.177.0.104/29 \
    to-ports=40000-41499
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=icmp src-address=100.49.15.208/29 to-addresses=217.177.0.104/29
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=udp src-address=100.49.15.216/29 to-addresses=217.177.0.104/29 \
    to-ports=41500-42999
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=tcp src-address=100.49.15.216/29 to-addresses=217.177.0.104/29 \
    to-ports=41500-42999
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=icmp src-address=100.49.15.216/29 to-addresses=217.177.0.104/29
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=udp src-address=100.49.15.224/29 to-addresses=217.177.0.104/29 \
    to-ports=43000-44499
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=tcp src-address=100.49.15.224/29 to-addresses=217.177.0.104/29 \
    to-ports=43000-44499
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=icmp src-address=100.49.15.224/29 to-addresses=217.177.0.104/29
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=udp src-address=100.49.15.232/29 to-addresses=217.177.0.104/29 \
    to-ports=44500-45999
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=tcp src-address=100.49.15.232/29 to-addresses=217.177.0.104/29 \
    to-ports=44500-45999
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=icmp src-address=100.49.15.232/29 to-addresses=217.177.0.104/29
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=udp src-address=100.49.15.240/29 to-addresses=217.177.0.104/29 \
    to-ports=46000-47499
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=tcp src-address=100.49.15.240/29 to-addresses=217.177.0.104/29 \
    to-ports=46000-47499
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=icmp src-address=100.49.15.240/29 to-addresses=217.177.0.104/29
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=udp src-address=100.49.15.248/29 to-addresses=217.177.0.104/29 \
    to-ports=47500-48999
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=tcp src-address=100.49.15.248/29 to-addresses=217.177.0.104/29 \
    to-ports=47500-48999
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=icmp src-address=100.49.15.248/29 to-addresses=217.177.0.104/29
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=udp src-address=100.49.16.0/29 to-addresses=217.177.0.104/29 \
    to-ports=49000-50499
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=tcp src-address=100.49.16.0/29 to-addresses=217.177.0.104/29 \
    to-ports=49000-50499
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=icmp src-address=100.49.16.0/29 to-addresses=217.177.0.104/29
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=udp src-address=100.49.16.8/29 to-addresses=217.177.0.104/29 \
    to-ports=50500-51999
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=tcp src-address=100.49.16.8/29 to-addresses=217.177.0.104/29 \
    to-ports=50500-51999
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=icmp src-address=100.49.16.8/29 to-addresses=217.177.0.104/29
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=udp src-address=100.49.16.16/29 to-addresses=217.177.0.104/29 \
    to-ports=52000-53499
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=tcp src-address=100.49.16.16/29 to-addresses=217.177.0.104/29 \
    to-ports=52000-53499
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=icmp src-address=100.49.16.16/29 to-addresses=217.177.0.104/29
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=udp src-address=100.49.16.24/29 to-addresses=217.177.0.104/29 \
    to-ports=53500-54999
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=tcp src-address=100.49.16.24/29 to-addresses=217.177.0.104/29 \
    to-ports=53500-54999
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=icmp src-address=100.49.16.24/29 to-addresses=217.177.0.104/29
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=udp src-address=100.49.16.32/29 to-addresses=217.177.0.104/29 \
    to-ports=55000-56499
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=tcp src-address=100.49.16.32/29 to-addresses=217.177.0.104/29 \
    to-ports=55000-56499
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=icmp src-address=100.49.16.32/29 to-addresses=217.177.0.104/29
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=udp src-address=100.49.16.40/29 to-addresses=217.177.0.104/29 \
    to-ports=56500-57999
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=tcp src-address=100.49.16.40/29 to-addresses=217.177.0.104/29 \
    to-ports=56500-57999
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=icmp src-address=100.49.16.40/29 to-addresses=217.177.0.104/29
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=udp src-address=100.49.16.48/29 to-addresses=217.177.0.104/29 \
    to-ports=58000-59499
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=tcp src-address=100.49.16.48/29 to-addresses=217.177.0.104/29 \
    to-ports=58000-59499
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=icmp src-address=100.49.16.48/29 to-addresses=217.177.0.104/29
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=udp src-address=100.49.16.56/29 to-addresses=217.177.0.104/29 \
    to-ports=59500-60999
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=tcp src-address=100.49.16.56/29 to-addresses=217.177.0.104/29 \
    to-ports=59500-60999
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=icmp src-address=100.49.16.56/29 to-addresses=217.177.0.104/29
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=udp src-address=100.49.16.64/29 to-addresses=217.177.0.104/29 \
    to-ports=61000-62499
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=tcp src-address=100.49.16.64/29 to-addresses=217.177.0.104/29 \
    to-ports=61000-62499
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=icmp src-address=100.49.16.64/29 to-addresses=217.177.0.104/29
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=udp src-address=100.49.16.72/29 to-addresses=217.177.0.104/29 \
    to-ports=62500-63999
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=tcp src-address=100.49.16.72/29 to-addresses=217.177.0.104/29 \
    to-ports=62500-63999
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=icmp src-address=100.49.16.72/29 to-addresses=217.177.0.104/29
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=udp src-address=100.49.16.80/29 to-addresses=217.177.0.104/29 \
    to-ports=64000-65499
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=tcp src-address=100.49.16.80/29 to-addresses=217.177.0.104/29 \
    to-ports=64000-65499
add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 \
    protocol=icmp src-address=100.49.16.80/29 to-addresses=217.177.0.104/29