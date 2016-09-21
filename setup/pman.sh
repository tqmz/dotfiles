#!/bin/bash

# pman – PHP Manual Pages for Command Line (via Debian Jessie Docker)

## (1) Setup via Docker
## <https://github.com/willdurand/pman>
## problem with this docker approach is, PHP Manual of Debian Jessie's PHP is
## genrated instead of your own PHP
#composer global require willdurand/pman:dev-master && \
#mkdir -p $HOME/bin && \
#cd $HOME/bin && \
#ln -fs $COMPOSER_HOME/vendor/willdurand/pman/bin/pman && \
#ln -fs $COMPOSER_HOME/vendor/willdurand/pman/bin/sync-pman && \
#sudo aptitude install docker && \
#echo "For generating man pages, please check (dev-master) script and run: sudo $HOME/bin/sync-pman"
##sudo $HOME/bin/sync-pman

# (2) Setup via PEAR
sudo aptitude install php-pear man &&\
sudo pear install doc.php.net/pman &&\
sudo pear upgrade doc.php.net/pman
