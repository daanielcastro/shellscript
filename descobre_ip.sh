#!/bin/bash
# descobre_ip - Script que informa o ip (privado) da maquina
# Forma de uso: $ /descobre_ip.sh
#                 Script que descobre o seu ip :): 192.168.1.69


privado_ipv4=
publico=


echo "Script que descobre o seu ip :): "

#Comando que chama o programa ip add e
privado_ipv4=$(ip addr | grep -Eo '[0-9]{2,3}.([0-9]{1,3}.){2}[0-9]{1,3}/[0-9]{2,3}')
publico=$(curl ipinfo.io/ip 2> /dev/null)
end_mac=$(ifconfig | grep -Eo '(([a-z0-9]){2}:){5}([a-z0-9]){2}')
echo "Endereço IPv4 privado: $privado_ipv4"
echo "Endereço IPv4 publico: $publico"
echo "Endereço MAC do interface de rede: $end_mac"
