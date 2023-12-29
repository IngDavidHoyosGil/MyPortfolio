#!/bin/bash
# Reto 2

regexNombre='^[A-Za-z]{2,}$'
regexApellido='^[A-Za-z]{2,}$'
regexEdad='^[1-9][0-9]?$'
regexDireccion='\w+[#]?\w+$'
regexNumero='^[0-9]{10}$'

read -p "Ingrese su nombre: " nombre
read -p "Ingrese su apellido: " apellido
read -p "Ingrese su edad: " edad
read -p "ingrese su dirección: " direccion
read -p "ingrese su número de teléfono: " telefono

if [[ $nombre =~ $regexNombre ]]; then
	echo "Nombre válido"
else
	echo "Nombre inválido"
fi

if [[ $apellido =~ $regexApellido ]]; then
	echo "Apellido válido"
else
	echo "Apellido inválido"
fi

if [[ $edad =~ $regexEdad ]]; then
	echo "Edad válida"
else
	echo "Edad inválida"
fi

if [[ $direccion =~ $regexDireccion ]]; then
	echo "Dirección válida"
else
	echo "Dirección inválida"
fi


if [[ $telefono =~ $regexNumero ]]; then
	echo "Teléfono válido"
else
	echo "Teléfono inválido"
fi

echo "Los datos"
echo $nombre
echo $apellido
echo $edad
echo $direccion
echo $telefono
