#!/usr/bin/env bash

HOME_PATH=/home/auspin

BASE_REPO_PATH=${HOME_PATH}/hub

if [ "$EUID" -ne 0 ]; then
  echo "Please run as root"
  exit
else
  make -f ${BASE_REPO_PATH}/backend/Makefile prod
  make -f ${BASE_REPO_PATH}/frontend/Makefile prod
  caddy run --config ${HOME_PATH}/Caddyfile &
fi
