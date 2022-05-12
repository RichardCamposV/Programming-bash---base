#!/bin/bash

# name extension number path

error(){
    echo $1
    exit 1
}

if [ $# -ne 4 ]; then
    error "Error: script [name, extension, number, path]"
fi

if [ ! -d $4 ]; then
    error "Error: El directorio no existe"
fi

if [ $3 -lt 1 ]; then
    error "Error: el numero de ficheros no puede ser menor que 1"
fi

for (( i = 1; i <= $3; i++ )); do
    name="$4/$1$i.$2"
    if [ $i -lt 10 ]; then
        name="$4/$10$i.$2"
    fi
    touch $name
    echo "Fichero: $name creado" | tr -s /
done
