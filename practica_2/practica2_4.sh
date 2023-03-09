#!/bin/bash
#819148, Landa Moyano, Paula, M, 3, B
#820800, López Berga, Álvaro, M, 3, B

echo -n Introduzca una tecla: 
read valor

case $valor in
	[1-9]*)
		echo $valor es un numero;;
	a*|A*|b*|B*|c*|C*|d*|D*|e*|E*|f*|F*|g*|G*|h*|H*|i*|I*|j*|J*|k*|K*|l*|L*|m*|M*|n*|N*|o*|O*|p*|P*|q*|Q*|r*|R*|s*|S*|t*|T*|u*|U*|v*|V*|w*|W*|x*|X*|y*|Y*|z*|Z*)
		echo $valor es una letra;;
	*)
		echo $valor es un caracter especial;;
esac

