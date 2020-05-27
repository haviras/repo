
FW=`which iptables`
$FW -F INPUT
$FW -P INPUT DROP
$FW -A INPUT -m state --state RELATED,ESTABLISHED -j ACCEPT

#ssh
$FW -A INPUT -s 109.87.189.240 -p tcp --dport 22 -j ACCEPT
#ssh for vpn
$FW -A INPUT -s 192.168.100.0/24 -p tcp --dport 22 -j ACCEPT

#vpn
$FW -A INPUT -s 109.87.189.240 -p udp --dport 1701 -j ACCEPT
$FW -A INPUT -s 109.87.189.240 -p 50 -j ACCEPT
$FW -A INPUT -s 109.87.189.240 -p udp --dport 500 -j ACCEPT
$FW -A INPUT -s 109.87.189.240 -p udp --dport 4500 -j ACCEPT

#repair sudo (for ubuntu hack)
$FW -A INPUT -s 127.0.0.0/8 -j ACCEPT
$FW -A INPUT -d 127.0.0.0/8 -j ACCEPT

#enable traceroute
$FW -A FORWARD -i eth0 -p udp -m udp --dport 33434:33523 -j ACCEPT
