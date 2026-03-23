enable
conf t

hostname IT_ACC_SW1
no ip domain-lookup
vtp domain TNS-MY-CO
vtp mode client
vtp version 2
vtp password tnsmyco

interface range g0/1-2
channel-group 1 mode passive
exit
interface port-channel 1
switchport mode trunk
switchport trunk native vlan 99
switchport trunk allowed vlan 10,20,99
exit

interface range fa0/1-23
switchport mode access
switchport access vlan 10
exit

interface fa0/24
switchport mode access
switchport access vlan 99
exit

interface vlan 99
ip address 172.16.99.11 255.255.255.224
no shutdown
exit
ip default-gateway 172.16.99.1

do w m
