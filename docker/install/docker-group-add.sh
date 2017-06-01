#!/bin/bash
#gpasswd -a $1 docker
usermod -aG docker $1
service docker restart
