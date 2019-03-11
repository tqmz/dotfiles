#!/bin/bash

sudo aptitude install -y ansible #ansible #ansible-vault
sudo aptitude install -y colortail multitail #logs #monitoring
sudo aptitude install -y dos2unix recode tidy #converters
sudo aptitude install -y shellcheck #bash #validation
sudo aptitude install -y php php-mbstring php-zip #php
sudo aptitude install -y ruby ruby-dev default-libmysqlclient-dev && sudo gem install bundler
sudo aptitude install -y mysql-client #mysql
sudo aptitude install -y libxml2-utils #xml #xmllint #xmlcatalog
sudo aptitude install -y autokey-gtk #textbausteine

cd `dirname $0`
./composer.sh
./mycli.sh
./pandoc.sh
./pman.sh
./repren.sh
