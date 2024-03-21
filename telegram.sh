#!/bin/bash

# Script de teste que enviar mensagens para um bot do telegram :)

TOKEN="6651602702:AAGia7pFj_k16YVsnq9rcjV9dTI3ItCKhnA" # o identificador único do bot
CHAT_ID="6062303212" # O id da janela da conversa com o bot :)
MENSAGEM="$*"

if curl -s -X POST https://api.telegram.org/bot$TOKEN/sendMessage -d chat_id=$CHAT_ID -d text="$1"; then
	echo "Log Enviado :)"
fi
#<<< $(iwatch -e all_events Downloads/) #2>&1 > /dev/null
