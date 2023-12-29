#!/bin/bash
# Reto 5 - Generar un archivo log, escribir dentro de este archivo el usuario y la fecha del log en formato YYYY_MM_DD_hh_mm_ss
# Autor: David Hoyos

echo "Generando el log..."
touch login.log

echo "Registrando al usuario.."
user=$USER
date=$(date +%Y_%m_%d__%H:%M:%S)

echo "$user / $date" >> login.log

sleep 1
echo -e "Login registrado\n"

cat login.log
