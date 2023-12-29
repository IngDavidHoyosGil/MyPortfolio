#!/bin/bash
# Programa para validar procesos, memoria, recursos, variables - Reto 4
# Autor: David Hoyos

opcion=0

while : 
do
    clear
    echo "-----------------------------------------"
    echo "-----PROGRAMA VALIDACIÓN DE RECURSOS-----"
    echo "-----------------------------------------"

    echo -e "\nMenú Principal"
    echo "1) Procesos Actuales"
    echo "2) Memoria Disponible"
    echo "3) Espacio en Disco"
    echo "4) Información de Red"
    echo "5) Variables de entorno configuradas"
    echo "6) Información del programa"
    echo "7) Backup de la información"
    echo -e "8) Salir\n"

    read -n1 -p "Ingrese la opción a seleccionar [1-8]: " opcion

    case $opcion in
        1)
            echo -e "\n..Procesos Actuales.."
            ps axu
            read -n1 -p "Presione cualquier letra para salir"
        ;;
        2)
            echo -e "\n..Memoria Disponible.."
            free
            read -n1 -p "Presione cualquier letra para salir"
        ;;
        3)
            echo -e "\n..Espacio en disco.."
            df -h
            read -n1 -p "Presione cualquier letra para salir"
        ;;
        4)
            echo -e "\n..Información de Red.."
            ip address
            read -n1 -p "Presione cualquier letra para salir"
        ;;
        5)
            echo -e "\n..Variables de entorno configuradas.."
            env -u VAR
            read -n1 -p "Presione cualquier letra para salir"
        ;;
        6)
            echo -e "\n..Información del programa.."
            dpkg -l | more
        ;;
        7)
            echo -e "..Comprimiendo Archivos.."
            # Shell/Glob pattern
            tar -czvf archivosComprimidos.tar.gz $(ls | grep "$*.sh")
            echo -e "¡Completado!"
            read -n1 -p "Presione cualquier letra para salir"
        ;;
        8)
            echo -e "..Saliendo, ¡¡gracias!!"
            exit 0
        ;;
    esac

done
