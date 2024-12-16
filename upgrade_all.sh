#!/bin/bash
# better bash; kudos: https://wizardzines.com/comics/bash-debugging/
set -x # prints out every line ot the script as it executes, with all variables expanded

# pull current images
docker pull caddy:2
docker pull pihole/pihole:latest
docker pull lmscommunity/logitechmediaserver 
docker pull giof71/squeezelite 
docker pull ghcr.io/home-assistant/home-assistant:stable
# remove current container
docker rm -f caddy pihole lms squeezelite home-assistant
# restart
docker compose up -d
# houeskeeping
docker system prune --force
