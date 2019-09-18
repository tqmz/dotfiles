#!/bin/bash

# Spotify
# <https://www.spotify.com/de/download/linux/>


. `dirname $0`/../bin/setosenv.sh

case "$OPERATION_SYSTEM" in

    Debian)
        # 1. Add the Spotify repository signing keys to be able to verify downloaded packages
        #sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
        curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add -

        # 2. Add the Spotify repository
        echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list

        # 3. Update list of available packages
        sudo aptitude update

        # 4. Install Spotify
        sudo aptitude install spotify-client
        ;;
    *)
        echo '$OPERATION_SYSTEM is unknown'
        exit 1
esac
