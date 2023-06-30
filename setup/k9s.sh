#!/bin/bash

cd /usr/local/bin
sudo wget --output-document=k9s.tar.gz https://github.com/derailed/k9s/releases/download/v0.27.3/k9s_Linux_amd64.tar.gz &&\
sudo tar -xzf k9s.tar.gz && sudo rm k9s.tar.gz
