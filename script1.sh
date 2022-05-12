#!/bin/bash

echo -n "Instalar programa? [s/n]: "
read result

if [[ $result == [sS] ]]; then
    echo "Instalando programa..."
elif [[ $result == [nN] ]]; then
    echo "El programa no se va a instalar"
else
    echo "Opcion invalida"
fi
