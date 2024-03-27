#!/usr/bin/bash

# Declaracion de una variable global
global="I'm a global variable"

# Creacion de una funcion donde se declara
# Una variable local
print_name() {
	local name
	name="I'm local :)"
	echo "Name: ${name} and Global: ${global}"
}

# Llamamos a la funcion
print_name

echo "La variable ${name} no sera imprimida ya que es una variable local, pero ${global} si"
