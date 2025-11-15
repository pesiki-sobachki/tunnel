#!/bin/bash

REMOTE_USER="user"
REMOTE_HOST="REMOTE_IP"
REMOTE_PORT="REMOTE_PORT"
LOCAL_PORT="LOCAL_PORT"

echo "🚀 Запускаем SSH-туннель..."
echo "${REMOTE_USER}@${REMOTE_HOST}, удаленный порт: ${REMOTE_PORT} --> локальный: ${LOCAL_PORT}"

autossh -M 0 -o "ServerAliveInterval=30" -o "ServerAliveCountMax=3" \
    -R ${REMOTE_PORT}:localhost:${LOCAL_PORT} ${REMOTE_USER}@${REMOTE_HOST}
