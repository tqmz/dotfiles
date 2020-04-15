#!/bin/bash

# git-remote-gcrypt –
# push and pull to GnuPG encrypted remote repositories
# <https://raw.githubusercontent.com/spwhitton/git-remote-gcrypt/master/README.rst>
# <https://box.matto.nl/encryptedremotegit.html>

sudo aptitude install -y git-remote-gcrypt

# local bare repo –
#
# git remote add smxt2-encrypted gcrypt::/srv/git/f-encrypted
# git config remote.smxt2-encrypted.gcrypt-participants "KEY1 KEY2"
# git config remote.smxt2-encrypted.gcrypt-signingkey "KEY1 KEY2"
# git config remote.smxt2-encrypted.gcrypt-publish participants true
# git push smxt2-encrypted master
# git fetch
#
# cd /tmp
# git clone gcrypt::/srv/git/f-encrypted

# Gitlab –
# git remote add gitlab-encrypted gcrypt::git@gitlab.com:tqmz/f.git
# ...

# todo: separate key (w/ backup)
