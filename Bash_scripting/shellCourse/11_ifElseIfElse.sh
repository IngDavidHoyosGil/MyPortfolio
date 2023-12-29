#!/bin/bash
# Programa para ejemplificar el uso de la sentencia de decisión if, else
# Autor: David Hoyos

edad=0

echo "Ejemplo Sentencia if - else"

read -p "Indique cuál es su edad: " edad
if [ $edad -le 18 ]; then
    echo "La persona es adolescente"
elif [ $edad -ge 19 ] && [ $edad -le 64 ]; then
    echo "La persona es adulta"
else
    echo "La persona es adulto mayor"
fi

