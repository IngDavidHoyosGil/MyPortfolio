#!/bin/bash
# Programa para ejemplificar el empaquetamiento con el comando pbzip
# Autor: David Hoyos

echo "Empaquetar todos los scripts de la carpeta shellCourse"

# c:create a new archive, v:verbosely list the files processed, f:specifies the name of the archive
tar -cvf shellCourse.tar *.sh
pbzip2 -f shellCourse.tar

echo "Empaquetar un directorio con tar y comprimir con pbzip2"
tar -cf *.sh > shellCourseDos.tar.bz2
