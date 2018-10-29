#!/bin/bash

# Chromium
# <https://wiki.debian.org/Chromium>

# install
sudo aptitude install -y chromium chromium-l10n

# enable extensions
# echo '# Enable the extensions
# export CHROMIUM_FLAGS="$CHROMIUM_FLAGS --enable-remote-extensions"' \
# | sudo tee /etc/chromium.d/enable-remote-extensions
