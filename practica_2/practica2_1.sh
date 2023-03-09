#!/bin/bash
#819148, Landa Moyano, Paula, M, 3, B
#820800, López Berga, Álvaro, M, 3, B

echo -n "Introduzca el nombre del fichero: " 
read x
if test -f "$x"
then
	echo -n "Los permisos del archivo $x son: "
	if test -r "$x"
	then
		echo -n  "r"
	else
		echo -n  "-"
	fi

	if test -w "$x"
	then
		echo -n  "w"
	else
		echo -n  "-"
	fi

	if test -x "$x"
	then
		echo   "x"
	else
		echo   "-"
	fi

else
	echo "$x no existe"
fi
