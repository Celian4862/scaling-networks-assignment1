interface g0/0/0
no shutdown
exit

interface g0/0/0.10
encapsulation dot1Q 10
ip address 192.168.10.2 255.255.255.224
ip helper-address 192.168.10.5
standby 10 ip 192.168.10.1
standby 10 priority 110
standby 10 preempt
interface g0/0/0.20
encapsulation dot1Q 20
ip address 192.168.20.2 255.255.255.192
ip helper-address 192.168.20.5
standby 20 ip 192.168.20.1
standby 20 priority 110
standby 20 preempt
interface g0/0/0.30
encapsulation dot1Q 30
ip address 192.168.30.2 255.255.255.192
ip helper-address 192.168.30.5
standby 30 ip 192.168.30.1
standby 30 priority 110
standby 30 preempt
interface g0/0/0.40
encapsulation dot1Q 40
ip address 192.168.40.2 255.255.255.192
ip helper-address 192.168.40.5
standby 40 ip 192.168.40.1
standby 40 priority 110
standby 40 preempt
interface g0/0/0.42
encapsulation dot1Q 42
ip address 192.168.42.2 255.255.255.192
ip helper-address 192.168.42.5
standby 42 ip 192.168.42.1
standby 42 priority 110
standby 42 preempt
exit
interface g0/0/0.99
encapsulation dot1Q 99
ip address 192.168.99.2 255.255.255.0
standby 99 ip 192.168.99.1
standby 99 priority 110
standby 99 preempt
