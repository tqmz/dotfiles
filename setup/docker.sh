#!/bin/bash

# DOCKER

#######################################################################
# Docker Engine
# <https://docs.docker.com/engine/installation/linux/docker-ce/debian/>
#######################################################################

sudo aptitude update
release=$(apt-cache policy docker-ce | command grep '~' | sed -e 's/\*/ /g' | sort | uniq | fzf)
release=$(echo $release | cut -d ' ' -f 1)
echo Version to be installed: ${release}.

sudo aptitude install -y docker-ce=$release docker-ce-cli=$release &&\
sudo service docker start &&\
sudo docker run hello-world &&\ # verify docker is installed correctly
echo Docker version installed: &&\
docker --version &&\

echo Please run "$(dirname $0)/docker-compose.sh" manually for Docker-Compose. &&\

#############################################################
# Docker Group
#############################################################
sudo usermod -aG docker $USER
newgrp docker

