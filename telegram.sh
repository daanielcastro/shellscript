#!/bin/bash

# Script de teste que enviar mensagens para um bot do telegram :)

TOKEN="TOKEN" # o identificador único do bot
CHAT_ID="" # O id da janela da conversa com o bot :)
MENSAGEM="$*"

if curl -s -X POST https://api.telegram.org/bot$TOKEN/sendMessage -d chat_id=$CHAT_ID -d text="$1"; then
	echo "Log Enviado :)"
fi
#<<< $(iwatch -e all_events Downloads/) #2>&1 > /dev/null
