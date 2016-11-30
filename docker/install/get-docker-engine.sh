#!/bin/sh
apt-get update -y
apt-get install curl -y
curl -fsSL https://get.docker.com/ | sh
