hostname CO_CORE_MLS
no ip domain-lookup
vtp domain TNS-MY-CO
vtp mode server
vtp version 2
vtp password tnsmyco

vlan 10
name EM
vlan 20
name FA
vlan 30
name HR
vlan 40
name CF1
vlan 42
name CF2
vlan 99
name MANAGEMENT
exit

interface range g0/1-2
switchport trunk encapsulation dot1q
switchport mode trunk
switchport trunk native vlan 99
switchport trunk allowed vlan 10,20,30,40,42,99
no shutdown

interface range fa0/1-2
channel-group 1 mode active
exit
interface port-channel 1
switchport trunk encapsulation dot1q
switchport mode trunk
switchport trunk native vlan 99
switchport trunk allowed vlan 10,20,30,40,42,99
exit

interface range fa0/3-4
channel-group 2 mode active
exit
interface port-channel 2
switchport trunk encapsulation dot1q
switchport mode trunk
switchport trunk native vlan 99
switchport trunk allowed vlan 10,20,30,40,42,99
exit

interface range fa0/5-6
channel-group 3 mode active
exit
interface port-channel 3
switchport trunk encapsulation dot1q
switchport mode trunk
switchport trunk native vlan 99
switchport trunk allowed vlan 10,20,30,40,42,99
exit

interface range fa0/7-8
channel-group 4 mode active
exit
interface port-channel 4
switchport trunk encapsulation dot1q
switchport mode trunk
switchport trunk native vlan 99
switchport trunk allowed vlan 10,20,30,40,42,99
exit

interface vlan 99
ip address 192.168.99.5 255.255.255.0
no shutdown
exit
ip default-gateway 192.168.99.1
