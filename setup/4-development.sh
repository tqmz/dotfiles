#!/bin/bash

sudo aptitude install -y ansible #ansible #ansible-vault
sudo aptitude install -y dos2unix recode tidy #converters
sudo aptitude install -y shellcheck #bash #validation
sudo aptitude install -y php php-mbstring php-zip #php
sudo aptitude install -y ruby ruby-dev default-libmysqlclient-dev && sudo gem install bundler pry
sudo aptitude install -y mysql-client #mysql
sudo aptitude install -y libxml2-utils xmlstarlet #xml #xmllint #xmlcatalog #xmlstarlet
sudo aptitude install -y autokey-gtk #textbausteine

cd `dirname $0`
./jsonlint.sh
./composer.sh
./mycli.sh
./pandoc.sh
./pman.sh
./repren.sh
./repl.sh
./yq.sh
