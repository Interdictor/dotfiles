#!/usr/bin/env bash

export LC_ALL=C.UTF-8
export LANG=C.UTF-8

apt-get update

apt-get install -y python3 python3-pip git curl
pip3 install pipenv
