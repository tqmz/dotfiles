#!/bin/bash

#############################################################
# GO
# <https://golang.org/doc/install/source>
#############################################################

GOROOT=/usr/local/src/go
sudo mkdir -p $GOROOT
sudo chown -R $USER:$USER $GOROOT
cd $GOROOT

git clone git@github.com:golang/go.git .
