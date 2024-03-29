11_ifElseIfElse.sh                                                                                  0000775 0001750 0001750 00000000600 14537142030 016512  0                                                                                                    ustar   ingdavidhoyos                   ingdavidhoyos                                                                                                                                                                                                          #!/bin/bash
# Programa para ejemplificar el uso de la sentencia de decisión if, else
# Autor: David Hoyos

edad=0

echo "Ejemplo Sentencia if - else"

read -p "Indique cuál es su edad: " edad
if [ $edad -le 18 ]; then
    echo "La persona es adolescente"
elif [ $edad -ge 19 ] && [ $edad -le 64 ]; then
    echo "La persona es adulta"
else
    echo "La persona es adulto mayor"
fi

                                                                                                                                11_ifElse.sh                                                                                        0000775 0001750 0001750 00000000776 14537141041 015441  0                                                                                                    ustar   ingdavidhoyos                   ingdavidhoyos                                                                                                                                                                                                          #!/bin/bash
# Programa para ejemplificar el uso de la sentencia de decisión if, else
# Autor: David Hoyos

notaClase=0
edad=0

echo "Ejemplo Sentencia if - else"
read -n1 -p "Indique cúal es su nota (1-9): " notaClase
echo -e "\n"

if (( $notaClase >= 7 )); then
    echo "El alumno aprueba la materia."
else
    echo "El alumno reprueba la materia"
fi

read -p "Indique cuál es su edad: " edad
if [ $edad -le 18 ]; then
    echo "La persona no pueda sufragar"
else
    echo "La persona puede sufragar"
fi

  12_ifAnidados.sh                                                                                    0000775 0001750 0001750 00000001107 14537332413 016266  0                                                                                                    ustar   ingdavidhoyos                   ingdavidhoyos                                                                                                                                                                                                          #!/bin/bash
# Programa para ejemplificar el uso de los if anidados
# Autor: David Hoyos

notaClase=0

echo "Ejemplo Sentencia if - else"
read -n1 -p "Indique cúal es su nota (1-9): " notaClase
echo -e "\n"

if [ $notaClase -ge 7 ]; then
    echo "El alumno aprueba la materia."
    read -n1 -p "¿Va a continuar estudiando en el siguiente nivel? (s/n)" continua
    if [ $continua == "s" ]; then
        echo -e "\nBienvenido al siguiente nivel"
    else
        echo -e "\nGracias por trabajar con nosotros, mucha suerte!!"
    fi
else
    echo "El alumno reprueba la materia"
fi

                                                                                                                                                                                                                                                                                                                                                                                                                                                         13_espresionesCondicionales.sh                                                                      0000775 0001750 0001750 00000001706 14537335271 021272  0                                                                                                    ustar   ingdavidhoyos                   ingdavidhoyos                                                                                                                                                                                                          #!/bin/bash
# Programa para ejemplificar el uso de expresiones condicionales
# Autor: David Hoyos

edad=0
pais=""
pathArchivo=""

read -p "Ingrese su edad: " edad
read -p "Ingrese su país: " pais
read -p "Ingrese el path de su archivo: " pathArchivo

echo -e "\nExpresiones Condicionales con números"

if [ $edad -lt 10 ]; then
    echo "La persona es un niño o niña"
elif [ $edad -ge 10 ] && [ $edad -le 17 ]; then
    echo "La persona se trata de un adolescente"
else 
    echo "La persona es mayor de edad"
fi

echo -e "\nExpresiones Condicionales con cadenas"
if [ $pais = "EEUU" ]; then
    echo "La persona es Americana"
elif [ $pais = "Ecuador" ] || [ $pais = "Colombia" ]; then
    echo "La persona es de Sur América"
else 
    echo "Se desconoce la nacionalidad"
fi

echo -e "\nExpresiones Condicionales con archivos"
if [ -d $pathArchivo ]; then
    echo "El directorio $pathArchivo existe"
else
    echo "El directorio $pathArchivo no existe"
fi    
                                                          14_case.sh                                                                                          0000775 0001750 0001750 00000000626 14537411140 015142  0                                                                                                    ustar   ingdavidhoyos                   ingdavidhoyos                                                                                                                                                                                                          #!/bin/bash
# Programa para ejemplificar el uso de la sentencia case
#Autor: David Hoyos

opcion=""

echo "Ejemplo Sentencia Case"
read -p "Ingrese una opción de la A - Z: " opcion
echo -e "\n"

case $opcion in
    "A") echo -e "\nOperación Guardar Archivo";;
    "B") echo "Operación Eliminar Archivo";;
    [C-E]) echo "No está implementada la operación";;
    *) echo "Opción Incorrecta"
esac    
                                                                                                          15_arreglos.sh                                                                                      0000775 0001750 0001750 00000001777 14537413417 016067  0                                                                                                    ustar   ingdavidhoyos                   ingdavidhoyos                                                                                                                                                                                                          #!/bin/bash
# Programa para ejemplificar el uso de los arreglos
# Autor: David Hoyos

arregloNumeros=(1 2 3 4 5 6)
arregloCadenas=(Natalia, Marco, Antonio, Susana)
arregloRangos=({A..Z} {10..20})

#Imprimir todos los valores
echo "Arreglo de Números: ${arregloNumeros[*]}"
echo "Arreglo de Cadenas: ${arregloCadenas[*]}"
echo "Arreglo de Rangos: ${arregloRangos[*]}"

# Imprimir los tamaños de los arreglos
echo "Tamaño Arreglo de Números: ${#arregloNumeros[*]}"
echo "Tamaño Arreglo de Cadenas: ${#arregloCadenas[*]}"
echo "Tamaño Arreglo de Rangos: ${#arregloRangos[*]}"

# Imprimir la posición 3 del arreglo de números, cadenas y rangos
echo "Posición 3 Arreglo de Números: ${arregloNumeros[3]}"
echo "Posición 3 Arreglo de Cadenas: ${arregloCadenas[3]}"
echo "Posición 3 Arreglo de Rangos: ${arregloRangos[3]}"

# Añadir y eliminar valores en un arreglo
arregloNumeros[6]=20
unset arregloNumeros[0]
echo "Arreglo de Números: ${arregloNumeros[*]}"
echo "Tamaño Arreglo de Números: ${#arregloNumeros[*]}"
 16_forLoop.sh                                                                                       0000775 0001750 0001750 00000001171 14537420131 015645  0                                                                                                    ustar   ingdavidhoyos                   ingdavidhoyos                                                                                                                                                                                                          #!/bin/bash
# Programa para ejemplificar el uso de la sentencia de iteración for
# Autor: David Hoyos

arregloNumeros=(1 2 3 4 5 6)

echo "Iterar en la Lista de Números"
for num in ${arregloNumeros[*]}
do
    echo "Número: $num"
done

echo "Iterar en la Lista de Cadenas"
for nom in "Marco" "Pedro" "Luis" "Daniela"
do
    echo "Nombres: $nom"
done

echo "Iterar en Archivos"
for file in *
do
    echo "Nombre archivo: $file"
done

echo "Iterar utilizando un comando"
for file in $(ls)
do
    echo "Nombre archivo: $file"
done

echo "Iterar utilizando el formato tradicional"
for ((i=1; i<10; i++))
do
    echo "Número: $i"
done
                                                                                                                                                                                                                                                                                                                                                                                                       17_whileLoop.sh                                                                                     0000775 0001750 0001750 00000000340 14537423542 016176  0                                                                                                    ustar   ingdavidhoyos                   ingdavidhoyos                                                                                                                                                                                                          #!/bin/bash
# Programa para ejemplificar el uso de la sentencia de iteración while loop
# Autor: David Hoyos

numero=1

while [ $numero -ne 10 ]  
do
    echo "Imprimiendo $numero veces"
    numero=$((numero + 1))
done    
                                                                                                                                                                                                                                                                                                18_loopsAnidados.sh                                                                                 0000775 0001750 0001750 00000000350 14537424213 017031  0                                                                                                    ustar   ingdavidhoyos                   ingdavidhoyos                                                                                                                                                                                                          #!/bin/bash
# Programa para ejemplificar el uso de los loops anidados
# Autor: David Hoyos

echo "Loops Anidados"
for file in $(ls)
do
    for nombre in {1..4}
    do
        echo "Nombre archivo: $file _ $nombre"
    done
done    
                                                                                                                                                                                                                                                                                        19_breakContinue.sh                                                                                 0000775 0001750 0001750 00000001302 14537440535 017027  0                                                                                                    ustar   ingdavidhoyos                   ingdavidhoyos                                                                                                                                                                                                          #!/bin/bash
# Programa para ejemplificar el uso de break y continue 
# Autor: David Hoyos

echo "Sentencias break y continue"
for file in $(ls)
do

    echo "Procesando file: $file"

    for nombre in {1..4}
    do

        echo "Iteración: $nombre"

        if [ $file = "10_download.sh" ]; then
            echo "Se encontró 10_download.sh, saliendo del loop interno."
            break;
        elif [[ $file == 4* ]]; then
            echo "Se encontró un archivo que inicia con 4, saltando el resto del loop interno para este archivo."
            continue;
        else    
            echo "Nombre archivo: $file _ $nombre"
        fi    
    done

    echo "Después del loop interno"

done    
                                                                                                                                                                                                                                                                                                                              1_utilityPostgress.sh                                                                               0000764 0001750 0001750 00000000211 14537127366 017562  0                                                                                                    ustar   ingdavidhoyos                   ingdavidhoyos                                                                                                                                                                                                          #!/bin/bash
# Programa para realizar algunas operaciones utilitarias de Postgress

echo "Hola, bienvenido al curso de programacion bash"
                                                                                                                                                                                                                                                                                                                                                                                       20_menuOpciones.sh                                                                                  0000775 0001750 0001750 00000002346 14537601625 016702  0                                                                                                    ustar   ingdavidhoyos                   ingdavidhoyos                                                                                                                                                                                                          #!/bin/bash
# Programa que permite manejar las utilidades de Postgres
# Autor: David Hoyos

opcion=0

while :
do
    # Limpiar la pantalla
    clear
    # Desplegar el menú de opciones
    echo "-----------------------------------------"
    echo "PGUTIL - Programa de Utilidad de Postgres"
    echo "-----------------------------------------"
    echo "             MENÚ PRINCIPAL              "
    echo "-----------------------------------------"
    echo "1. Instalar Postgres"
    echo "2. Desintalar Postgres"
    echo "3. Sacar un respaldo"
    echo "4. Restaurar respaldo"
    echo "5. Salir"

    # Leer los datos del usuario - Capturar información
    read -n1 -p "Ingrese una opción [1-5]: " opcion

    # Validar la opción ingresada
    case $opcion in
        1)
            echo -e "\nInstalar postgres....."
            sleep 3
            ;;
        2)
            echo -e "\nDesinstalar postgress."
            sleep 3
            ;;
        3)
            echo -e "\nSacar respaldo........"
            sleep 3
            ;;
        4)
            echo -e "\nRestaurar respaldo...."
            sleep 3
            ;;
        5)  
            echo -e "\nSalir del Programa...."
            exit 0
            ;;
    esac
done    
                                                                                                                                                                                                                                                                                          21_archivosDirectorios.sh                                                                           0000775 0001750 0001750 00000000560 14537645463 020270  0                                                                                                    ustar   ingdavidhoyos                   ingdavidhoyos                                                                                                                                                                                                          #!/bin/bash
# Programa para ejemplificar la creación de archivos y directorios 
# Autor: David Hoyos

echo "Archivos - Directorios"

if [ $1 = "d" ]; then
    mkdir -m 755 $2
    echo "Directorio creado correctamente"
    ls -la $2
elif [ $1 = "f" ]; then
    touch $2
    echo "Archivo creado correctamente"
    ls -la $2
else
    echo "No existe la opción $1"
fi

                                                                                                                                                22_writeFile.sh                                                                                     0000775 0001750 0001750 00000000415 14537652244 016170  0                                                                                                    ustar   ingdavidhoyos                   ingdavidhoyos                                                                                                                                                                                                          #!/bin/bash
# Programa para ejemplificar como se escribe en un archivo 
# Autor: David Hoyos

echo "Escribir en un archivo"
echo "Valores escritos con el comando echo" >> $1

# Adición multilínea - marker set as a EndOfMessage
cat <<EndOfMessage >>$1
$2
EndOfMessage
                                                                                                                                                                                                                                                   23_readFile.sh                                                                                      0000775 0001750 0001750 00000000733 14537662471 015760  0                                                                                                    ustar   ingdavidhoyos                   ingdavidhoyos                                                                                                                                                                                                          #!/bin/bash
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
                                     24_fileOperations.sh                                                                                0000775 0001750 0001750 00000000657 14537671711 017233  0                                                                                                    ustar   ingdavidhoyos                   ingdavidhoyos                                                                                                                                                                                                          #!/bin/bash
# Programa para ejemplificar las operaciones de un archivo 
# Autor: David Hoyos

echo "Operaciones de un archivo"
mkdir -m 755 backupScripts

echo -e "\nCopiar los scripts del directorio actual al nuevo directorio backupScripts"
cp *.* backupScripts/
ls -la backupScripts/

echo -e "\nMover el directorio backupScripts a otra ubicación: $HOME"
mv backupScripts $HOME


echo -e "\nEliminar los archivos .txt"
rm *.txt
                                                                                 25_tar.sh                                                                                           0000775 0001750 0001750 00000000303 14540050044 015003  0                                                                                                    ustar   ingdavidhoyos                   ingdavidhoyos                                                                                                                                                                                                          #!/bin/bash
# Programa para ejemplificar el empaquetamiento con el comando tar 
# Autor: David Hoyos

echo "Empaquetar todos los scripts de la carpeta shellCourse"

tar -cvf shellCourse.tar *.sh
                                                                                                                                                                                                                                                                                                                             26_gzip.sh                                                                                          0000775 0001750 0001750 00000000570 14540051764 015207  0                                                                                                    ustar   ingdavidhoyos                   ingdavidhoyos                                                                                                                                                                                                          #!/bin/bash
# Programa para ejemplificar el empaquetamiento con el comando tar y gzip
# Autor: David Hoyos

echo "Empaquetar todos los scripts de la carpeta shellCourse"

tar -cvf shellCourse.tar *.sh

#Cuando se comprime con gzip, el empaquetamiento anterior se elimina
gzip shellCourse.tar

echo "Comprimir un archivo, con una tasa de compresion de 9"
gzip -9 9_options.sh

                                                                                                                                        27_pbzip2.sh                                                                                        0000775 0001750 0001750 00000000650 14540057445 015446  0                                                                                                    ustar   ingdavidhoyos                   ingdavidhoyos                                                                                                                                                                                                          #!/bin/bash
# Programa para ejemplificar el empaquetamiento con el comando pbzip
# Autor: David Hoyos

echo "Empaquetar todos los scripts de la carpeta shellCourse"

# c:create a new archive, v:verbosely list the files processed, f:specifies the name of the archive
tar -cvf shellCourse.tar *.sh
pbzip2 -f shellCourse.tar

echo "Empaquetar un directorio con tar y comprimir con pbzip2"
tar -cf *.sh > shellCourseDos.tar.bz2
                                                                                        2_variables_2.sh                                                                                    0000775 0001750 0001750 00000000175 14537127535 016350  0                                                                                                    ustar   ingdavidhoyos                   ingdavidhoyos                                                                                                                                                                                                          #!/bin/bash
# Programa para revisar la declaracion de variables

echo "Opción nombre a traves del script anterior: $nombre"
                                                                                                                                                                                                                                                                                                                                                                                                   2_variables.sh                                                                                      0000775 0001750 0001750 00000000445 14537127512 016122  0                                                                                                    ustar   ingdavidhoyos                   ingdavidhoyos                                                                                                                                                                                                          #!/bin/bash
# Programa para revisar la declaracion de variables

opcion=0
nombre=Marco

echo "Opción: $opcion y Nombre: $nombre"

# Exportar la variable para que este disponible para los demas procesos
export nombre

# Llamar al siguiente script para recuperar la variable
./2_variables_2.sh
                                                                                                                                                                                                                           3_tipoOperadores.sh                                                                                 0000775 0001750 0001750 00000001627 14537130025 017146  0                                                                                                    ustar   ingdavidhoyos                   ingdavidhoyos                                                                                                                                                                                                          #!/bin/bash
# Programa para revisar los tipos de operadores
# Autor: David

numA=10
numB=4

echo "Operadores Aritméticos"
echo "Números: A=$numA y B=$numB"
echo "Sumar A + B =" $((numA + numB))
echo "Restar A - B =" $((numA - numB))
echo "Multiplicar A * B =" $((numA * numB))
echo "Dividir A / B =" $((numA / numB))
echo "Residuo A % B =" $((numA % numB))


echo -e "\nOperadores Relacionales"
echo "Números: A=$numA y B=$numB"
echo "A > B =" $((numA > numB))
echo "A < B =" $((numA < numB))
echo "A >= B =" $((numA >= numB))
echo "A <= B =" $((numA <= numB))
echo "A == B =" $((numA == numB))
echo "A != B =" $((numA != numB))


echo -e "\nOperadores Asignación"
echo "Números: A=$numA y B=$numB"
echo "Sumar A += B =" $((numA += numB))
echo "Restar A -= B =" $((numA -= numB))
echo "Multiplicación A *= B =" $((numA *= numB))
echo "Dividir A /= B =" $((numA /= numB))
echo "Residuo A %= B =" $((numA %= numB))
                                                                                                         4_argumentos.sh                                                                                     0000775 0001750 0001750 00000000415 14537130051 016325  0                                                                                                    ustar   ingdavidhoyos                   ingdavidhoyos                                                                                                                                                                                                          #!/bin/bash
# Programa para ejemplificar el paso de argumentos

nombreCurso=$1
horarioCurso=$2

echo "El nombre del curso es: $nombreCurso, dictado en el horario de $horarioCurso"
echo "El número de parámetros enviados es: $#"
echo "Los parámetros enviados son: $*"
                                                                                                                                                                                                                                                   5_substitutionComand.sh                                                                             0000775 0001750 0001750 00000000472 14537130067 020052  0                                                                                                    ustar   ingdavidhoyos                   ingdavidhoyos                                                                                                                                                                                                          #!/bin/bash
# Programa para revisar cómo ejecutar comandos dentro de un programa y almacenarlos en una variable para su posterior utilización
# Autor: David

ubicacionActual=$(pwd) 
infoKernel=$(uname -a)

echo "La ubicación actual es la siguiente: $ubicacionActual"
echo "Información del Kernel: $infoKernel"
                                                                                                                                                                                                      6_readEcho.sh                                                                                       0000775 0001750 0001750 00000000570 14537130106 015660  0                                                                                                    ustar   ingdavidhoyos                   ingdavidhoyos                                                                                                                                                                                                          #!/bin/bash
# Programa para ejemplificar como capturar la información del usuario utilizando el comando echo, read y $REPLY
#Autor: David

option=0
backupName=""

echo "Programa Utilidades Postgres"
echo -n "Ingresar una opción:"
read
option=$REPLY
echo -n "Ingresar el nombre del archivo del backup:"
read
backupName=$REPLY
echo "Opción: $option, backupName: $backupName"
                                                                                                                                        7_read.sh                                                                                           0000775 0001750 0001750 00000000521 14537130123 015055  0                                                                                                    ustar   ingdavidhoyos                   ingdavidhoyos                                                                                                                                                                                                          #!/bin/bash
# Programa para ejemplificar como capturar la información del usuario utilizando el comando read
#Autor: David

option=0
backupName=""

echo "Programa Utilidades Postgres"
read -p "Ingresar una opción:" option
read -p "Ingresar el nombre del archivo del backup:" backupName
echo "Opción: $option, backupName: $backupName"
                                                                                                                                                                               8_readValidate.sh                                                                                   0000775 0001750 0001750 00000000742 14537130142 016536  0                                                                                                    ustar   ingdavidhoyos                   ingdavidhoyos                                                                                                                                                                                                          #!/bin/bash
# Programa para ejemplificar como capturar la información del usuario y validarla
#Autor: David

option=0
backupName=""
clave=""

echo "Programa Utilidades Postgres"
# Acepta el ingreso de información de un solo caracter
read -n1 -p "Ingresar una opción:" option
echo -e "\n"
read -n10 -p "Ingresar el nombre del archivo del backup:" backupName
echo -e "\n"
echo "Opción: $option, backupName: $backupName"
read -s -p "Clave:" clave
echo -e "\n"
echo "Clave: $clave"
                              Case.sh                                                                                             0000775 0001750 0001750 00000002607 14537211445 014605  0                                                                                                    ustar   ingdavidhoyos                   ingdavidhoyos                                                                                                                                                                                                          #!/bin/bash
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

        

                                                                                                                         Info_personal.sh                                                                                    0000775 0001750 0001750 00000001703 14537146230 016523  0                                                                                                    ustar   ingdavidhoyos                   ingdavidhoyos                                                                                                                                                                                                          #!/bin/bash
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
                                                             log.sh                                                                                              0000764 0001750 0001750 00000000562 14540045054 014502  0                                                                                                    ustar   ingdavidhoyos                   ingdavidhoyos                                                                                                                                                                                                          #!/bin/bash
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
                                                                                                                                              menuOpciones.sh                                                                                     0000775 0001750 0001750 00000003634 14537627700 016404  0                                                                                                    ustar   ingdavidhoyos                   ingdavidhoyos                                                                                                                                                                                                          #!/bin/bash
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
                                                                                                    Regex.sh                                                                                            0000775 0001750 0001750 00000001777 14537146325 015017  0                                                                                                    ustar   ingdavidhoyos                   ingdavidhoyos                                                                                                                                                                                                          #!/bin/bash
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
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 