#!/bin/bash
# Programa para ejemplificar como se lee un archivo 
# Autor: David Hoyos

echo "Leer un archivo"
cat $1
echo -e "\nAlmacenar los variables en una variable"
valorCat=`cat $1`
echo "Leyendo la variable: $valorCat"

# Se utiliza la variable IFS (Internal Field Separator) para evitar que los espacios en blanco, al inicio o al final, se recorten.

echo -e "\nLeer archivos línea por línea utilizando while"
while IFS= read linea
do
    echo "$linea"
done < $1   
