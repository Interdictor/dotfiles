#!/usr/bin/env bash

echo 'export LANG=C.UTF-8' >> /etc/environment/python.sh
chmod +x /etc/environment/python.sh

apt-get update

apt-get install -y python3 python3-pip git curl
pip3 install pipenv
pipenv --version
