#!/bin/bash

echo "Hello World" > file.txt

if [[ -f "file.txt" ]] && [[ -s "file.txt" ]]; then
	echo "El fichero existe y su tamaño es mayor que zero"
fi
