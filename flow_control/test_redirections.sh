#!/bin/bash

echo "Hello World!" > output.txt # Redirige la salida al fichero output.txt
echo "Hello Moon!" >> output.txt # Añade la salida al fichero output.txt

# Mostrar la salida
cat output.txt

# Sobreescribir output.txt
echo "Goodbye" > output.txt
cat output.txt

# Redirigir la salida normal y la de errores a un fichero
ls -l / &> stdout_and_stderr.txt

# Redirigir stdout y stderr a distintos ficheros
ls -l / 1>stdout.txt 2>stderr.txt

# Redirigir la entrada de datos
cat < output.txt

# Redirigir multiples lineas
# Imprimiendolas por pantalla
# Utiliza EOF que actua como delimitador
cat << EOF
	Learning Bash
	Is super fun!
EOF

# Redirecion de la salida de un comando a la entrada de otro
ls -l / | grep "bin"
