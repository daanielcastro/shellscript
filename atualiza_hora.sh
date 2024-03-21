#!/bin/bash

# Script para forçar a atualização da hora

sudo systemctl stop ntp

sudo ntpdate -s 10.20.0.1

sudo systemctl start ntp
