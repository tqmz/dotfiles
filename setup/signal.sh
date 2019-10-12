#!/bin/bash

# Signal Desktop Client
# <https://support.signal.org/hc/en-us/articles/214507138-How-do-I-install-Signal-Desktop->
# <https://github.com/WhisperSystems/Signal-Desktop>


. `dirname $0`/../bin/setosenv.sh

curl -s https://updates.signal.org/desktop/apt/keys.asc | sudo apt-key add -
echo "deb [arch=amd64] https://updates.signal.org/desktop/apt xenial main" | sudo tee /etc/apt/sources.list.d/signal-xenial.list
sudo aptitude update && sudo aptitude install signal-desktop

