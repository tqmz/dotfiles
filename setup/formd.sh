#!/bin/bash

# formd – Markdown formatting tool for switching inline links vs. referenced links
# <http://drbunsen.github.io/formd/>

sudo rm -rf /opt/formd
sudo mkdir -p /opt/formd
sudo git clone https://github.com/drbunsen/formd.git /opt/formd
mkdir -p $HOME/bin
ln -fs /opt/formd/formd $HOME/bin/formd
