#!/bin/bash

sudo aptitude install -y libxml2-utils #xmllint #xmlcatalog
sudo aptitude install -y recode tidy
sudo aptitude install -y php php-mbstring php-zip
sudo aptitude install -y autokey-gtk   #textbausteine

cd `dirname $0`
./mycli.sh
./composer.sh
./pman.sh
./pandoc.sh
