#!/bin/bash

# Script para forçar a atualização da hora

sudo systemctl stop ntp

sudo ntpdate -s $IP
sudo systemctl start ntp
