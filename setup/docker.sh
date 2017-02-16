#!/bin/bash

# DOCKER

#############################################################
# Docker Engine
# <https://docs.docker.com/engine/installation/linux/debian/>
#############################################################

sudo aptitude purge "lcx-docker*"
sudo aptitude purge "docker.io*"
sudo aptitude update
sudo aptitude  install apt-transport-https ca-certificates gnupg2

sudo apt-key adv \
       --keyserver hkp://ha.pool.sks-keyservers.net:80 \
       --recv-keys 58118E89F3A912897C070ADBF76221572C52609D

SOURCES="/etc/apt/sources.list.d/docker.list"
sudo touch $SOURCES
echo "deb https://apt.dockerproject.org/repo debian-jessie main" | sudo tee "$SOURCES"

sudo aptitude update
sudo apt-cache policy docker-engine
sudo aptitude install docker-engine
sudo service docker start
sudo docker run hello-world # verify docker is installed correctly

#############################################################
# Docker Compose
# <https://docs.docker.com/compose/install/>
# <https://github.com/docker/compose/releases> ~> `docker-compose` URL
#############################################################

./docker-compose.sh

#############################################################
# Docker Group
#############################################################
sudo usermod -aG docker $USER
newgrp docker

