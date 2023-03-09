#!/bin/bash
#819148, Landa Moyano, Paula, M, 3, B
#820800, López Berga, Álvaro, M, 3, B

for fichero in "$@"
	do
		if test -f "$fichero"
		then
			more "$fichero"
		else
			echo "$fichero" no existe
		fi
	done

