#!/bin/bash
# <https://snapcraft.io/install/tradingview/debian>

sudo aptitude update
sudo aptitude install -y snapd
sudo snap install core
sudo snap install tradingview
