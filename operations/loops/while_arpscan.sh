#!/usr/bin/bash

sudo arp-scan -x -I eth0 192.168.0.0/24 | while read -r line; do
	echo "${line}"
	host=$(echo "${line}" | awk '{print $1}')
	echo "Scanning ${host}"
	nmap -n -Pn "${host}"
done
