#########################################################
#
#
# 	DISPLAY MAC AND IP ADDRESSES FOR NETWORK INTERFACES
# 	( DEBIAN ) 
#
#	Pings 10 IP addresses on home range (192.168.1/24)
#
#	Source: http://www.linuxquestions.org/questions
#	/linux-networking-3/find-ip-from-mac-315063/
#########################################################


#!/bin/bash

for ((i=1; i<=10; i++));do
ping -c 1 192.168.1.$i 2>&1 >/dev/null
arp -a 192.168.1.$i
done



