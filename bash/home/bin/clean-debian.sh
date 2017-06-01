#!/bin/bash
apt-get autoremove --purge -y
apt-get autoclean
apt-get clean
dpkg -l |grep ^rc|awk '{print $2}' |sudo xargs dpkg -P 
