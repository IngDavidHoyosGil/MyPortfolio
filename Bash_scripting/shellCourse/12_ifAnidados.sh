#!/bin/bash
# Programa para ejemplificar el uso de los if anidados
# Autor: David Hoyos

notaClase=0

echo "Ejemplo Sentencia if - else"
read -n1 -p "Indique cúal es su nota (1-9): " notaClase
echo -e "\n"

if [ $notaClase -ge 7 ]; then
    echo "El alumno aprueba la materia."
    read -n1 -p "¿Va a continuar estudiando en el siguiente nivel? (s/n)" continua
    if [ $continua == "s" ]; then
        echo -e "\nBienvenido al siguiente nivel"
    else
        echo -e "\nGracias por trabajar con nosotros, mucha suerte!!"
    fi
else
    echo "El alumno reprueba la materia"
fi

