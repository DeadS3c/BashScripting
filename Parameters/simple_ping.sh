#!/bin/bash

# Script para realizar un ping a la direccion que se pase por parametro
SCRIPT_NAME="${0}"
TARGET="${1}"

echo "Ejecutando el script ${SCRIPT_NAME}..."
echo "Lanzando ping al objetivo: ${TARGET}..."

ping -c 3 "${TARGET}"
