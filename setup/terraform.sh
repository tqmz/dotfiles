#!/bin/bash

# Terraform – Infrastructure as Code
# <https://www.terraform.io/intro/getting-started/install.html>
# <https://github.com/hashicorp/terraform>


. `dirname $0`/../bin/setosenv

wget -O /tmp/terraform.zip https://releases.hashicorp.com/terraform/0.10.8/terraform_0.10.8_linux_amd64.zip
unzip -d ~/bin /tmp/terraform.zip
