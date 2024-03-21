#!/bin/bash

# binario.sh - Programa que converte um número decimal em binário :)
# Autor: Daniel Castro
# Uso:
#	O programa pode ser usado de duas formas,


# Declaração de variáveis
binario=
resto=


if [[ ! -z $1 ]]; then
	decimal=$1
else
	echo "Digite um numero decimal :)"
	read decimal
fi


# o test usa expressão regular para verificar se o que foi digitado foi um numero ou não
if [[ ! $decimal =~ [0-9] ]]; then
	echo "Somente numeros decimais inteiros. Saindo agora"
	exit 69;
fi
	

for((;;)); do
	resto=$((decimal%2))
	binario=$resto$binario
	test $((decimal/2)) -eq 0 && break || decimal=$((decimal/2))
	
done

echo $binario

