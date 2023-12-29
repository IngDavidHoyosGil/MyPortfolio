#!/bin/bash
# Programa para ejemplificar el uso de los loops anidados
# Autor: David Hoyos

echo "Loops Anidados"
for file in $(ls)
do
    for nombre in {1..4}
    do
        echo "Nombre archivo: $file _ $nombre"
    done
done    
