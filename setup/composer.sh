#!/bin/bash

# Composer #php #packagemanager
# <https://getcomposer.org/doc/faqs/how-to-install-composer-programmatically.md>

function install() {
    EXPECTED_SIGNATURE=$(wget https://composer.github.io/installer.sig -O - -q)
    echo $EXPECTED_SIGNATURE
    php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
    ACTUAL_SIGNATURE=$(php -r "echo hash_file('SHA384', 'composer-setup.php');")
    echo $ACTUAL_SIGNATURE

    if [ "$EXPECTED_SIGNATURE" = "$ACTUAL_SIGNATURE" ]
    then
        php composer-setup.php --install-dir="$HOME/bin"
        RESULT=$?
        rm composer-setup.php
        mv composer.phar composer
        return $RESULT
    else
        >&2 echo 'ERROR: Invalid installer signature'
        rm composer-setup.php
        return 1
    fi
}

cd ~/bin &&\
install &&\

# Changelogs
# <https://github.com/pyrech/composer-changelogs>
composer global require 'pyrech/composer-changelogs'
