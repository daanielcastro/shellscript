#!/bin/bash

DATA=$(date "+%H:%M:%S_%d:%m:%Y")
ARQUIVO_LOG=/home/$USER/scan_$DATA.log
echo "Relatório do Scaneamento feito em: $DATA" > $ARQUIVO_LOG


clamscan $1 -l $ARQUIVO_LOG

./telegram.sh $(cat $ARQUIVO_LOG)
