#!/usr/bin/bash

name="${1}"
domain="${2}"

FILE="results.csv"

if [[ -z "${name}" ]] || [[ -z "${domain}" ]]; then
	echo "Usage: ${0} name domain"
	exit 1
fi

if [[ -f "${FILE}" ]]; then
	touch ${FILE}
fi

if ping -c 1 "$domain"; then
	echo "The ${domain} was pingeable"
	success=0
else
	echo "Could not reach the ${domain}"
	success=1
fi

echo "${name},${domain},${success},$(date)" > ${FILE}
