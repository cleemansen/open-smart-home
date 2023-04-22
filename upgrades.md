# pihole

[changelog](https://github.com/pi-hole/docker-pi-hole/releases)
[instructions](https://github.com/pi-hole/docker-pi-hole#upgrading--reconfiguring)

1. `docker pull pihole/pihole`
1. `docker rm -f pihole`
1. `docker compose up -d`

# lms / squeezebox

[changelog](https://github.com/Logitech/slimserver/blob/public%2F8.4/Changelog8.html)

1. `docker pull lmscommunity/logitechmediaserver`
1. `docker rm -f lms`
1. `docker compose up -d`

# squeezelite

1. `docker pull giof71/squeezelite`
1. `docker rm -f squeezelite`
1. `docker compose up -d`

# home-assistant

1. `docker pull ghcr.io/home-assistant/home-assistant:stable` (if failing: `docker logout ghcr.io`
1. `docker rm -f home-assistant`
1. docker compose up -d`

# candle

0. it is a private docker repository. you have to do the github login by classic tocken first
1. `docker pull ghcr.io/unividuell/candle`
1. `docker rm -f candle`
1. `docker compose up -d`
