#!/bin/bash
sudo apt-get autoremove --purge -y
sudo apt-get autoclean
sudo apt-get clean
dpkg -l |grep ^rc|awk '{print $2}' |sudo xargs dpkg -P 
