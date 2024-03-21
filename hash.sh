#!/bin/bash

numero=${#}

#if [[ ${#0} -gt 1 ]]; then
	while [[ ! -z $1 ]]; do
		echo $1
		shift
	done

	echo "$numero argumentos foram digitados"
#fi

#if [[ -f $arquivo ]] && [[ ! -z $arquivo ]]
#then
#	echo $(md5sum $arquivo)
#else
#	echo "Arquivo nao existe"
#fi
