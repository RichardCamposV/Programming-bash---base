#!/bin/bash

echo -n "Escribe un numero: "
read limite

for (( i = 0; i <= $limite; i++ )); do
    #codigo
    echo $i
done
