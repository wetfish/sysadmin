#!/bin/bash
# Load connection details from config.sh
dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
source $dir/config.sh

iptables -t nat -D PREROUTING --dst $CurrentIP -p tcp --dport $CurrentPort -j DNAT --to-destination $TargetIP:$TargetPort
iptables -t nat -D POSTROUTING -p tcp --dst $TargetIP --dport $TargetPort -j SNAT --to-source $CurrentIP

iptables -t nat -D PREROUTING --dst $CurrentIP -p udp --dport $CurrentPort -j DNAT --to-destination $TargetIP:$TargetPort
iptables -t nat -D POSTROUTING -p udp --dst $TargetIP --dport $TargetPort -j SNAT --to-source $CurrentIP
