#!/bin/bash
#
# backup.sh - script simples que realiza o backup da pasta home usando o rsync

USUARIO=""


if [[ "$1" == "--backup" ]]; then
	shift
	origem="$1"
	shift
	servidor="$1"
	rsync -avdru $origem $USUARIO:${servidor}
elif [[ "$1" == "-d" ]]; then
	shift
	servidor="$1"
	shift
	origem="$1"
	rsync -avdru $USUARIO:${servidor} $origem
else
	echo "Parametro  errado :)"
	echo "Falta algo :)"
	exit 1
fi

exit 0
