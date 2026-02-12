hostname HR_ACC_SW1
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
switchport trunk allowed vlan 10,20,30,40,42,99
exit

interface range fa0/1-23
switchport mode access
switchport access vlan 30
exit

interface fa0/24
switchport mode access
switchport access vlan 99
exit

interface vlan 99
ip address 192.168.99.31 255.255.255.0
no shutdown
exit
ip default-gateway 192.168.99.1
