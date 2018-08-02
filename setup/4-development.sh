#!/bin/bash

sudo aptitude install -y libxml2-utils #xmllint #xmlcatalog
sudo aptitude install -y tidy
sudo aptitude install php

cd `dirname $0`
./mycli.sh
./composer.sh
./pman.sh
