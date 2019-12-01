#!/usr/bin/env bash
CYAN='\033[0;36m'
NC='\033[0m' # No color

# Stop running containers
sh scripts/stop.sh

printf "${CYAN}Start & run containers${NC}\n"
docker-compose up -d

# Maybe add nginx ip to /etc/hosts ?