#!/bin/bash

TEMP=$1

if [ $TEMP -gt 5 ]; then
	if [ $TEMP -lt 15 ]; then
		echo "It's cold out there"
	elif [ $TEMP -lt 25 ]; then
		echo "It's warm out there"
	else
		echo "It's super hot out there"
	fi
else
	echo "It's freezing outside..."
fi
