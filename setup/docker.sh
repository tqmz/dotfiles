#!/bin/bash

# DOCKER

#######################################################################
# Docker Engine
# <https://docs.docker.com/engine/installation/linux/docker-ce/debian/>
#######################################################################

sudo aptitude update
release=$(apt-cache policy docker-ce | grep -v http | fzf)
release=$(echo $release | cut -d ' ' -f 1)
echo $release

sudo aptitude install -y docker-ce=$release
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

