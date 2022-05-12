#!/bin/bash

echo -n "Escribe un numero: "
read value

if [ $value -ge 5 -a $value -le 10 ]; then
    echo "Tu numero esta en el rango [5, 10]"
else
    echo "Tu numero no esta en el rango [5, 10]"
fi

# -a and
# -o or