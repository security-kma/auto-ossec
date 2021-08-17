#!/bin/bash

dnf install git python2 python2-pip python3-pexpect -y

wget https://forensics.cert.org/cert-forensics-tools-release-el8.rpm

rpm -Uvh cert-forensics-tools-release*rpm

dnf --enablerepo=forensics install python2-crypto -y

dnf install python3-ply -y

git clone https://github.com/security-kma/auto-ossec.git

cd ./auto-ossec

chmod +x auto_ossec_centos.py

./auto_ossec_centos.py $1 url=https://github.com/ossec/ossec-hids/archive/3.6.0.tar.gz

/var/ossec/bin/ossec-control start

/var/ossec/bin/ossec-control restart
