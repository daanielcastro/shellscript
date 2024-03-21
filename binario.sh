#!/bin/bash

binario=
resto=

echo "Digite um numero decimal :)"
read decimal

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

