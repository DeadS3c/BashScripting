#!/bin/bash

FILE="output.txt"

touch "${FILE}"
until [[ -s "${FILE}" ]]; do
	echo "$FILE esta vacio..."
	echo "Durmiendo por 2 segundos..."
	sleep 2
done

echo "${FILE} parece que tiene contenido!"
