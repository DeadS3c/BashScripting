#!/usr/bin/bash

HOSTS_FILE="hosts.txt"
NMAP_RESULT=$(nmap -n -iL ${HOSTS_FILE} --open | grep "Nmap scan report\|\/tcp")

# Leer la salida de nmap linea por linea
while read -r line; do
	if echo "${line}" | grep -q "report for"; then
		ip=$(echo "${line}" | awk -F'for ' '{print $2}')
	else
		port=$(echo "${line}" | grep open | awk -F'/' '{print $1}')
		file="port-${port}.txt"
		echo "${ip}" >> "${file}"
	fi
done <<< "${NMAP_RESULT}"
