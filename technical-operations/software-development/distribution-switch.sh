enable
conf t

hostname SD_DIST_SW1
no ip domain-lookup
vtp domain TNS-MY-CO
vtp mode client
vtp version 2
vtp password tnsmyco

interface range g0/1-2
channel-group 1 mode active
exit
interface port-channel 1
switchport mode trunk
switchport trunk native vlan 99
switchport trunk allowed vlan 10,20,99
exit

interface range fa0/1-2
channel-group 2 mode active
exit
interface port-channel 2
switchport mode trunk
switchport trunk native vlan 99
switchport trunk allowed vlan 10,20,99
exit

interface range fa0/3-4
channel-group 3 mode active
exit
interface port-channel 3
switchport mode trunk
switchport trunk native vlan 99
switchport trunk allowed vlan 10,20,99
exit

interface range fa0/5-6
channel-group 4 mode active
exit
interface port-channel 4
switchport mode trunk
switchport trunk native vlan 99
switchport trunk allowed vlan 10,20,99
exit

interface range fa0/7-8
channel-group 5 mode active
exit
interface port-channel 5
switchport mode trunk
switchport trunk native vlan 99
switchport trunk allowed vlan 10,20,99
exit

interface range fa0/9-10
channel-group 6 mode active
exit
interface port-channel 6
switchport mode trunk
switchport trunk native vlan 99
switchport trunk allowed vlan 10,20,99
exit

interface fa0/23
switchport mode access
switchport access vlan 20
exit

interface fa0/24
switchport mode access
switchport access vlan 99
exit

interface vlan 99
ip address 172.16.99.20 255.255.255.224
no shutdown
exit
ip default-gateway 172.16.99.1

do w m
