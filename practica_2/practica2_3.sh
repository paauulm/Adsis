#!/bin/bash
#819148, Landa Moyano, Paula, M, 3, B
#820800, López Berga, Álvaro, M, 3, B

if test $# != 1 
then
	echo "Sintaxis: practicas2_3.sh <nombre_archivo>"
else
	fichero=$1
	if test -f $fichero
	then
		chmod u+x $fichero
		chmod g+x $fichero
		stat --format="%A" $fichero
	else
		echo $fichero no existe
	fi
fi 
