#!/bin/bash
# Load connection details from config.sh
dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
source $dir/config.sh

iptables -t nat -A PREROUTING --dst $YourIP -p tcp --dport $YourPort -j DNAT --to-destination $TargetIP:$TargetPort
iptables -t nat -A POSTROUTING -p tcp --dst $TargetIP --dport $TargetPort -j SNAT --to-source $YourIP
iptables -t nat -A OUTPUT --dst $YourIP -p tcp --dport $YourPort -j DNAT --to-destination $TargetIP:$TargetPort

iptables -t nat -A PREROUTING --dst $YourIP -p udp --dport $YourPort -j DNAT --to-destination $TargetIP:$TargetPort
iptables -t nat -A POSTROUTING -p udp --dst $TargetIP --dport $TargetPort -j SNAT --to-source $YourIP
iptables -t nat -A OUTPUT --dst $YourIP -p udp --dport $YourPort -j DNAT --to-destination $TargetIP:$TargetPort

