#!/bin/bash

FILENAME="flow_control.txt"

if [[ ! -f "${FILENAME}" ]]; then
	touch "${FILENAME}"
fi
