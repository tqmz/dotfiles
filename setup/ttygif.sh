#!/bin/bash

# ttyrec + ttygif
# a terminal recorder and animated git creator
# <https://github.com/sugyan/ttygif>

sudo aptitude install ttyrec golang &&\
export GOPATH=/usr/local/src/go &&\
sudo mkdir -p $GOPATH &&\
sudo chown ${USER}:root $GOPATH &&\
go get github.com/sugyan/ttygif &&\
cd /usr/local/bin &&\
sudo ln -fs $GOPATH/bin/ttygif


#cd /tmp &&\
#git clone https://github.com/sugyan/ttygif.git &&\
#cd ttygif && make && sudo cp ttygif /usr/local/bin
