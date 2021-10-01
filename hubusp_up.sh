#!/usr/bin/env bash

BASE_REPO_PATH=/home/auspin/hub

if [ "$EUID" -ne 0 ]; then
  echo "Please run as root"
  exit
else
  make -f ${BASE_REPO_PATH}/backend/Makefile prod
  make -f ${BASE_REPO_PATH}/frontend/Makefile prod
  caddy run --config ${BASE_REPO_PATH}/utils/Caddyfile &
fi
