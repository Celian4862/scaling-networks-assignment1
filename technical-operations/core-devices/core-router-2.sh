interface g0/0
no shutdown
exit

interface g0/0.10
encapsulation dot1Q 10
ip address 172.16.10.3 255.255.255.192
ip helper-address 172.16.10.5
standby 10 ip 172.16.10.1
standby 10 priority 100
standby 10 preempt
standby 10 track G0/1

interface g0/0.20
encapsulation dot1Q 20
ip address 172.16.20.3 255.255.255.128
ip helper-address 172.16.20.5
standby 20 ip 172.16.20.1
standby 20 priority 100
standby 20 preempt
standby 10 track G0/1

interface g0/0.99
encapsulation dot1Q 99
ip address 172.16.99.3 255.255.255.224
standby 99 ip 172.16.99.1
standby 99 priority 100
standby 99 preempt
standby 10 track G0/1

do w m
