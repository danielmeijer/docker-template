#!/usr/bin/env bash
CYAN='\033[0;36m'
NC='\033[0m' # No color

# Stop running containers
if [ $(docker ps -q | wc -c) != 0 ]; then
    printf "${CYAN}Stop running containers${NC}\n"
    docker stop $(docker ps -q)
fi