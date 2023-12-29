#!/bin/bash
# Programa para ejemplificar el empaquetamiento con clave utilizando zip
# Autor: David Hoyos

echo "Empaquetar todos los scripts de la carpeta shellCourse con zip y asignar una clave de seguridad"

zip -e shellCourse.zip *.sh
