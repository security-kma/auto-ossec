#!/bin/bash
sudo apt-get install git python python-pip python-crypto python-pexpect –y

git clone https://github.com/security-kma/auto-ossec.git

cd auto-ossec

chmod +x auto_ossec.py

./auto_ossec.py $1 url=https://github.com/ossec/ossec-hids/archive/3.6.0.tar.gz

/var/ossec/bin/ossec-control start

/var/ossec/bin/ossec-control restart
