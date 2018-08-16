#!/bin/bash

sudo aptitude install -y libxml2-utils #xmllint #xmlcatalog
sudo aptitude install -y tidy
sudo aptitude install -y php
sudo aptitude install -y autokey-gtk   #textbausteine

cd `dirname $0`
./mycli.sh
./composer.sh
./pman.sh
./pandoc.sh
