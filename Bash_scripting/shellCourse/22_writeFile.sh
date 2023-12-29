#!/bin/bash
# Programa para ejemplificar como se escribe en un archivo 
# Autor: David Hoyos

echo "Escribir en un archivo"
echo "Valores escritos con el comando echo" >> $1

# Adición multilínea - marker set as a EndOfMessage
cat <<EndOfMessage >>$1
$2
EndOfMessage
