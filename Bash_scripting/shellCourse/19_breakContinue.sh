#!/bin/bash
# Programa para ejemplificar el uso de break y continue 
# Autor: David Hoyos

echo "Sentencias break y continue"
for file in $(ls)
do

    echo "Procesando file: $file"

    for nombre in {1..4}
    do

        echo "Iteración: $nombre"

        if [ $file = "10_download.sh" ]; then
            echo "Se encontró 10_download.sh, saliendo del loop interno."
            break;
        elif [[ $file == 4* ]]; then
            echo "Se encontró un archivo que inicia con 4, saltando el resto del loop interno para este archivo."
            continue;
        else    
            echo "Nombre archivo: $file _ $nombre"
        fi    
    done

    echo "Después del loop interno"

done    
