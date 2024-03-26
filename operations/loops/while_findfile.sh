#!/bin/bash

SIGNAL_TO_STOP="stoploop"

while [[ ! -f "${SIGNAL_TO_STOP}" ]]; do
	echo "El fichero ${SIGNAL_TO_STOP} no existe aun..."
	echo "Durmiendo por 2 segundos..."
	sleep 2
done

echo "El fichero ha sido econtrado! Saliendo..."
