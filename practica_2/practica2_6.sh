#!/bin/bash
#819148, Landa Moyano, Paula, M, 3, B
#820800, López Berga, Álvaro, M, 3, B


directorio=$(mktemp binXXX)
echo Se ha creado el directorio $directorio
echo Directorio destino de copia: $directorio

contador=0

for fichero in ./*
do
	if test -x "$fichero"
	then
		cp "$fichero" "$directorio"
		echo "$fichero" ha sido copiado a "$directorio"
		contador=$((contador+1))
	fi
done


if test $contador -ne 0
then
	echo Se han copiado $contador archivos
else
	echo No se ha copiado ningún archivo
fi
