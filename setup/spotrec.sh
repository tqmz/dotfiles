#!/bin/bash

#############################################################
# SpotRec – a Pulse based Spotify recorder
# <https://bleuzen.de/software/spotrec>
#
# Article:
# <https://www.linux-bibel-oesterreich.at/2020/09/21/spotrec-audio-streams-von-spotify-unter-linux-aufzeichnen/>
#
# README:
# <https://raw.githubusercontent.com/Bleuzen/SpotRec/master/README.md>
#############################################################

sudo mkdir -p /opt
sudo git clone https://github.com/Bleuzen/SpotRec.git /opt/SpotRec
echo 'python3 /opt/SpotRec/spotrec.py "$@"' > $HOME/bin/spotrec
chmod u+x $HOME/bin/spotrec

echo "Usage: spotrec -o /path/to/target/ --skip-intro"
echo "with pavucontrol settings: Output Spotify → spotrec, 100 %; Recording Lavf... Monitor of spotrec, 100 %; Output Spotrec 100 %"

