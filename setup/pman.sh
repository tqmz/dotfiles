#!/bin/bash

# pman – PHP Manual Pages for Command 
# <https://github.com/willdurand/pman>

COMPOSER_PACKAGE=willdurand/pman
DIR_PMAN=$COMPOSER_HOME/vendor/$COMPOSER_PACKAGE

composer global require ${COMPOSER_PACKAGE}:dev-master && \

# PR: <>
cd $DIR_PMAN &&\
git remote add tqmz git@github.com:tqmz/pman.git &&\
git fetch tqmz &&\
git checkout tqmz/php7 &&\

mkdir -p $HOME/bin && \
cd $HOME/bin && \
ln -fs $DIR_PMAN/bin/pman && \
ln -fs $DIR_PMAN/bin/sync-pman && \

# todo: check if docker exists, otherwise ./docker.sh
sudo aptitude install docker && \

echo "For generating man pages, please *review* (untrusted source from
      dev-master!), then run: sudo $HOME/bin/sync-pman"
less $HOME/bin/sync-pman &&\

echo -n "Run sync-pman with sudo? [y/N] "
while true; do
    read -s RUN
    if [ -n "$RUN" ]; then
        echo $RUN
        break;
    fi
done

if [ "$RUN" == "y" ]; then
    sudo $HOME/bin/sync-pman
fi

