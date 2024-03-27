#!/bin/bash

VARIABLE_ONE="one"
VARIABLE_TWO="two"

if [[ "${VARIABLE_ONE}" == "${VARIABLE_TWO}" ]]; then
	echo "Los strings son iguales"
else
	echo "Los strings son distintos"
fi
