#!/bin/bash

# Zoom
# proprietary video conference client
# <https://support.zoom.us/hc/en-us/articles/204206269-Installing-or-updating-Zoom-on-Linux#h_89c268b4-2a68-4e4c-882f-441e374b87cb>


cd /tmp
sudo aptitude install -y libxcb-xtest0
wget -qnc https://zoom.us/client/latest/zoom_amd64.deb
sudo aptitude install ibus
sudo dpkg -i zoom_amd64.deb


