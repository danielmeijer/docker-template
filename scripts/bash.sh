#!/usr/bin/env bash
CYAN='\033[0;36m'
NC='\033[0m' # No color

# TODO Make execute any container, PHP by default
printf "${CYAN}Execute PHP bash${NC}\n"
docker-compose exec php bash