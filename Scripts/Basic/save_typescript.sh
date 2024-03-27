#!/bin/bash

FILENAME="$(date +%m-%d-%y)_${RANDOM}.log"

if [[ ! -d ~/sessions ]]; then
	mkdir -p ~/sessions
fi

# Start the typescript session
script -f -a "~/sessions/${FILENAME}"
