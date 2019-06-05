#!/bin/bash

#############################################################
# DOCKER COMPOSE
# <https://docs.docker.com/compose/install/>
# <https://github.com/docker/compose/releases> ~> `docker-compose` URL
#############################################################

COMPOSE_FILE="/usr/local/bin/docker-compose"
release=$(git ls-remote --tags git://github.com/docker/compose.git | grep -v docs | cut -d '/' -f 3 | sort -n | fzf --no-sort --tac -e)
echo $release
sudo wget https://github.com/docker/compose/releases/download/$release/docker-compose-`uname -s`-`uname -m` -O $COMPOSE_FILE && \
sudo chmod +x $COMPOSE_FILE

#############################################################
# Docker Group
#############################################################
sudo usermod -aG docker $USER
newgrp docker

