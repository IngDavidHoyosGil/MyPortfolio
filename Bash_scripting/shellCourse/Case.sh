#!/bin/bash
# Programa del reto 3 -  Adivinanzas
# Autor: David Hoyos

opcion=""
edad=0
nombre=""
resultado=0
pathfile=""

echo "Uso del case"
echo "-----Digite la opción deseada------"
echo "*******  Menú  ********************"
echo "**** 1.- Adivinar edad ************"
echo "**** 2.- Adivinar nombre **********"
echo "**** 3.- Resuelve operación *******"
echo "**** 4.- Escribe path de archivo **"
echo "**** 5.- Salir ********************"
read -n1 -p "-----Digite la opción [1-5]: " opcion
echo -e "\n"

case $opcion in
    1) read -p "Digita la edad: " edad
        if [ $edad = 25 ]; then
            echo "¡Correcto!"
        else
            echo "¡Es incorrecto!"
        fi;;
    2) read -p "Escribe el nombre: " nombre
        if [ $nombre = "David" ]; then
            echo "¡Correcto!"
        else
            echo "¡Es incorrecto!"
        fi;;
    3) read -p "Escribe el resultado (El número del universo): " resultado
        if [ $resultado = 42 ]; then
            echo "¡Correcto!"
        else
            echo "¡Es incorrecto!"
        fi;;
    4) read -p "Ingresa el path: " pathfile
        eval pathfile="$pathfile"
        if [ -d $pathfile ]; then
            echo "El directorio $pathfile existe"
        else
            echo "El directorio $pathfile no existe"
        fi;;
    5)
        ;;
    *)
       echo -e "\n Opción incorrecta"
        ;;
esac        

        

