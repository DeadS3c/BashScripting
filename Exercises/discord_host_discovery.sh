#!/usr/bin/bash

# Envio de notificaciones cuando se descubre un host nuevo
KNOWN_HOSTS="hosts.txt"
NETWORK="192.168.0.0/24"
INTERFACE="eth0"
FROM_ADDR="kali@security.com"
TO_ADDR="pentester@security.com"

while true; do
	echo "Performing an ARP scan against ${NETWORK}..."

	sudo arp-scan -x -I ${INTERFACE} ${NETWORK} | while read -r line; do
		host="$(echo "${line}" | awk '{print $1}')"
		if ! grep -q "${host}" "${KNOWN_HOSTS}"; then
			echo "Found a new host: ${host}!"
			echo "${host}" >> "${KNOWN_HOSTS}"
			curl -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"New host found: ${host}\"}" discord-webhook-link
		fi
	done

	sleep $(( 10 $RANDOM %20))
done
