#!/bin/bash

echo 'Installing homebank ...'
# <http://homebank.free.fr/>
sudo aptitude install -y homebank

echo 'Installing ofxstatement ...'
# <https://github.com/kedder/ofxstatement>
# <https://github.com/fabolhak/ofxstatement-de-ing> # not found via pip3 search
#sudo pip3 install ofxstatement-de-ing
#sudo aptitude install -y ofxstatement ofxstatement-plugins # ERROR: No plugin named 'ingde' is found
#sudo pip3 install https://github.com/fabolhak/ofxstatement-de-ing/archive/master.zip # does not work with CSV containing saldo
sudo pip3 install https://github.com/tqmz/ofxstatement-de-ing/archive/with-saldo.zip
# </usr/local/lib/python3.5/dist-packages/ofxstatement/plugins/ingde.py>
echo 'Usage: ofxstatement convert -t ingde input.csv output.ofx'
echo 'Do export CSV with saldo on DiBa site.'
echo '... in HomeBank settings, chose "add memo to info" in import/export settings.'

# todo
# <https://github.com/hamvocke/dkb2homebank>
# via <https://www.hamvocke.com/blog/import-dkb-accounts-into-homebank/>
