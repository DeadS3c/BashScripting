#!/bin/bash

# Pone a "dormir" el script durante 10 segundos y manda el comando a background
# Lo que permite continuar con la ejecucion del script
echo "Sleeping for 10 seconds..."
sleep 10 &

# Crea un fichero
echo "Creando el fichero test123"
touch test123

# Borra el fichero test123
echo "Borrando el fichero test123"
rm test123

# Ejecuta 2 comandos condicionados a que la ejecucion del primero sea exitosa
touch test && touch test123

# Agrupa la ejecucion de comandos como una unica unidad
(ls; ps)

# Ejecuta los comandos uno detras de otro
ls; ps; whoami

# Ejecuta el segundo comando condicionado a que el primero falla
lzl || echo "The lzl command failed"
