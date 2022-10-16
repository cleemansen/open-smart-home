# Open Smart Home

## Host machine

HP T520

## OS

Debian

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
