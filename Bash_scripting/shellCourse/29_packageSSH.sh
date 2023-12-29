#!/bin/bash
# Programa para ejemplificar la forma de como transferir por la red a través del comando rsync, utilizando las opciones de empaquetamiento para optimizar la velocidad de transferencia
# Autor: David Hoyos

echo "Empaquetar todos los scripts de la carpeta shellCourse y transferirlos por la red a otro equipo utilizando el comando rsync"

host=""
usuario=""

read -p "Ingresar el host: " host
read -p "Ingresar el usuario: " usuario

echo -e "\nEn este momento se procederá a empaquetar la carpeta y se transferirá según los datos ingresados"
rsync -avz $(pwd) $usuario@$host:/home/ingdavidhoyosgil/MyPortfolio/Bash_scripting
