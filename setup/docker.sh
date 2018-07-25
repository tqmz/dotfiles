#!/bin/bash

# DOCKER

#######################################################################
# Docker Engine
# <https://docs.docker.com/engine/installation/linux/docker-ce/debian/>
#######################################################################

#sudo aptitude purge "lcx-docker*"
#sudo aptitude purge "docker.io*"
#sudo aptitude purge "docker-engine"

#sudo aptitude update
#sudo aptitude install curl apt-transport-https ca-certificates gnupg2 software-properties-common

#curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
#sudo apt-key fingerprint 0EBFCD88 | grep Docker &&\

case "$(lsb_release -cs)" in

    sid)
        # "buster" used here instead of "$(lsb_release -cs)" as the latter only displays "sid" => 404
        sudo add-apt-repository \
           "deb [arch=amd64] https://download.docker.com/linux/debian \
           buster \
           edge" # on Debian Sid only "edge" is available, otherwise "stable" would be default here
        ;;

    *)
        curl -fsSL https://download.docker.com/linux/$(. /etc/os-release; echo "$ID")/gpg | sudo apt-key add -
        SOURCES="/etc/apt/sources.list.d/docker.list"
        sudo touch $SOURCES
        echo "deb [arch=amd64] https://download.docker.com/linux/$(. /etc/os-release; echo "$ID") $(lsb_release -cs) stable" | sudo tee "$SOURCES"
        ;;

esac

sudo aptitude update
sudo apt-cache policy docker-ce
sudo aptitude install docker-ce
sudo service docker start
sudo docker run hello-world # verify docker is installed correctly


#############################################################
# Docker Compose
# <https://docs.docker.com/compose/install/>
# <https://github.com/docker/compose/releases> ~> `docker-compose` URL
#############################################################

cd `dirname $0`
./docker-compose.sh

#############################################################
# Docker Group
#############################################################
sudo usermod -aG docker $USER
newgrp docker

