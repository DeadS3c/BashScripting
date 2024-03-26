#!/bin/bash

USER_INPUT="${1}"

if [[ -z "${USER_INPUT}" ]]; then
	echo "Se necesita de una entrada de comandos"
	exit 1
fi

if [[ -f "${USER_INPUT}" ]]; then
	echo "${USER_INPUT} es un fichero"
elif [[ -d "${USER_INPUT}" ]]; then
	echo "${USER_INPUT} es un directorio"
else
	echo "${USER_INPUT} no es ni un fichero ni un directorio"
fi
