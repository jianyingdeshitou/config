#!/bin/bash
apt-get update -y
apt-get install python-pip -y

pip install --upgrade pip
# 如果有老版的，先删除掉
pip uninstall docker-compose -y
pip install docker-compose

docker-compose -v
