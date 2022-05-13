#!/bin/bash

# Comprobar que el numero de parametros es correcto
# Comprobar que el directorio existe
# Recorrer cada fichero del directorio
# Guardar en una variable el nombre actual con la ruta completa
# Guardar en una variable el nombre nuevo
# Cambiar el nobre del fichero
# Imprimir lo que esta haciendo el script
# Ejemplo:
# ./script7-solucion.sh rap- Canciones/
# Canciones/cancion01.mp4 -> Canciones/rap-cancion01.mp4

error(){
    echo $1
    exit 1
}

if [ $# -ne 2 ]; then
    error "Error: script [new_name, path]"
fi

if [ ! -d $2 ]; then
    error "Error: El directorio no existe"
fi

for a in `ls $2`; do
    actual_name="$2/$a" 
    new_name="$2/$1$a"
    echo "$actual_name -> $new_name" | tr -s /
    mv $actual_name $new_name
done
