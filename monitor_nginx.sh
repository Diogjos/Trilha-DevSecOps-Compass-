#!/bin/bash

# Diretório para salvar os logs
LOG_DIR="/home/diogo/Compasso/Projeto_Nginx/log"
ONLINE_LOG_FILE="$LOG_DIR/nginx_online.log"
OFFLINE_LOG_FILE="$LOG_DIR/nginx_offline.log"


# Nome do serviço
SERVICE="nginx"

# Data e hora atuais
DATE_TIME=$(date "+%Y-%m-%d %H:%M:%S")

# Validar se o serviço está online
if systemctl is-active --quiet "$SERVICE"; then
    STATUS="ONLINE"
    MESSAGE="O serviço $SERVICE está ativo."
    echo "$DATE_TIME - $SERVICE - $STATUS - $MESSAGE" >> "$ONLINE_LOG_FILE"
else
    STATUS="OFFLINE"
    MESSAGE="O serviço $SERVICE está inativo."
    echo "$DATE_TIME - $SERVICE - $STATUS - $MESSAGE" >> "$OFFLINE_LOG_FILE"
fi

