#!/bin/bash

sudo aptitude update && sudo aptitude install -y apt-transport-https
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list
sudo aptitude update
sudo aptitude install -y kubectl kubectx # kubectx providing kubens
