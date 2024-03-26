#!/bin/bash

FILENAME="flow_control.txt"

if [[ -f "${FILENAME}" ]]; then
	echo "${FILENAME} already exists."
	exit 1
else
	touch "${FILENAME}"
fi
