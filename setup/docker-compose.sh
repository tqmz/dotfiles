#!/bin/bash

#############################################################
# DOCKER COMPOSE
# <https://docs.docker.com/compose/install/>
# <https://github.com/docker/compose/releases> ~> `docker-compose` URL
#############################################################

COMPOSE_FILE="/usr/local/bin/docker-compose"
sudo wget https://github.com/docker/compose/releases/download/1.11.1/docker-compose-`uname -s`-`uname -m` -O $COMPOSE_FILE && \
sudo chmod +x $COMPOSE_FILE

#############################################################
# Docker Group
#############################################################
sudo usermod -aG docker $USER
newgrp docker

