#!/bin/bash
#819148, Landa Moyano, Paula, M, 3, B
#820800, López Berga, Álvaro, M, 3, B


ficheros=0
directorios=0
echo Introduzca el nombre de un directorio:
read directorio
echo $lineas
OIFS="$IFS"
IFS=$'\n'
if test -d $directorio
then
	for fichero in $(ls "$directorio") 
	do
		if test -d "$directorio$fichero"
		then
			directorios=$(( ++directorios ))
		elif test -f "$directorio$fichero"
		then
			ficheros=$(( ++ficheros ))
		fi
	done
	echo El numero de ficheros y directorios en $directorio es de $ficheros y $directorios, respectivamente
else 
	echo  $directorio no es un directorio
fi
IFS="$OIFS"
