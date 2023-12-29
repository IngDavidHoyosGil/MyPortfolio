#!/bin/bash
# Programa para ejemplificar el uso de la sentencia de decisión if, else
# Autor: David Hoyos

notaClase=0
edad=0

echo "Ejemplo Sentencia if - else"
read -n1 -p "Indique cúal es su nota (1-9): " notaClase
echo -e "\n"

if (( $notaClase >= 7 )); then
    echo "El alumno aprueba la materia."
else
    echo "El alumno reprueba la materia"
fi

read -p "Indique cuál es su edad: " edad
if [ $edad -le 18 ]; then
    echo "La persona no pueda sufragar"
else
    echo "La persona puede sufragar"
fi

