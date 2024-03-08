# Open Smart Home

## Host machine

HP T520

## OS

Debian

## Keep everything up to date

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

1. `docker pull ghcr.io/home-assistant/home-assistant:stable` (if failing: `docker logout ghcr.io`)
1. `docker rm -f home-assistant`
1. docker compose up -d`

# candle

0. it is a private docker repository. you have to do the github login by classic token first
1. `docker pull ghcr.io/unividuell/candle`
1. `docker rm -f candle`
1. `docker compose up -d`

### OS libraries

#### Docker

Official installation. Setup for running as non-root.

#### Bluetooth

##### BlueZ

Manual installation of `bluez` from sources to benefit about latest features (eg passiv scanning):

- https://budimir.cc/2022/01/08/compile-bluez-from-source/
- replace apt package `python-docutils` by `docutils-common`

##### Home Assistant Integration

Just install [integration `Bluetooth](https://www.home-assistant.io/integrations/bluetooth/). It should find the bluetooth dongle.

## Devices

### Xiaomi Mijia LYWSD03MMC

1. Flash it with [pvvx custom firmware](https://github.com/pvvx/ATC_MiThermometer)
1. Set [configuration `Advertising Type` to `BTHome`](https://community.home-assistant.io/t/home-asssistant-xiaomi-mijia-lywsd03mmc-temperature-and-humidity-sensor-tutorial-september-2022/456403/9)
1. Install [HA integration `BTHome`](https://www.home-assistant.io/integrations/bthome)
1. BTHome will automatically find the sensor
