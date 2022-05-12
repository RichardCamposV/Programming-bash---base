#!/bin/bash

echo -n "Escribe un numero: "
read value

if [[ $value -ne 5 ]]; then
    echo "Tu numero no es igual a 5"
else
    echo "Tu numero es igual a 5"
fi

# -gt greater than
# -ge greater or equal
# -lt lower than
# -le lower o equal
# -eq equal
# -ne not equal
