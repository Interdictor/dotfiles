#!/usr/bin/env bash

apt-get update

apt-get install -y python3 python3-pip git curl
pip3 install pipenv
pipenv --version
