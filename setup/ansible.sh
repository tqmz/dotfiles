#!/bin/bash

# Ansible – latest release via pip
# <http://docs.ansible.com/ansible/latest/intro_installation.html#latest-releases-via-pip>
# <https://github.com/ansible/ansible>


. `dirname $0`/../bin/setosenv

sudo pip install ansible
