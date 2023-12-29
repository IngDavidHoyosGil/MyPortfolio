#!/bin/bash
# Reto 1
# Programa para ejemplificar como capturar la información del usuario y validarla utilizando expresiones regulares.
# Autor: David Hoyos

identificacionRegex='^[0-9]{10}$'
paisRegex='^EC|CO|US$'
fechaNacimientoRegex='^19|20[0-9]{2}[1-12][1-31]$'

echo "Expresiones regulares"
read -p "Ingresar una identificación:" identificacion
read -p "Ingresar las iniciales de un país [EC, CO, US]:" pais
read -p "Ingresa la fecha de nacimiento [yyyymmdd]:" fechaNacimiento

#Validación Identificación
if [[ $identificacion =~ $identificacionRegex ]]; then
    echo "Identificación $identificacion válida"
else
    echo "Identificación $identificacion inválida"
fi

#Validación país
if [[ $pais =~ $paisRegex ]]; then
    echo "País $pais válido"
else
    echo "País $pais inválido"
fi

#Validación Fecha de Nacimiento
if [[ $fechaNacimiento =~ $fechaNacimientoRegex ]]; then
    echo "Fecha de nacimiento $fechaNacimiento válida"
else
    echo "Fecha de nacimiento $fechaNacimiento inválida"
fi
