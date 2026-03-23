enable
configure terminal

hostname TO_CORE_MLS
no ip domain-lookup
vtp domain TNS-MY-CO
vtp mode server
vtp version 2
vtp password tnsmyco

vlan 10
name IT
vlan 20
name SD
vlan 99
name MANAGEMENT
exit

interface range g1/0/1-2
switchport mode trunk
switchport trunk native vlan 99
switchport trunk allowed vlan 10,20,99
no shutdown

interface range g01/0/3-4
channel-group 1 mode passive
exit
interface port-channel 1
switchport mode trunk
switchport trunk native vlan 99
switchport trunk allowed vlan 10,20,99
exit

interface range g1/0/5-6
channel-group 2 mode passive
exit
interface port-channel 2
switchport mode trunk
switchport trunk native vlan 99
switchport trunk allowed vlan 10,20,99
exit

interface vlan 99
ip address 172.16.99.5 255.255.255.224
no shutdown
exit
ip default-gateway 172.16.99.1

do w m
