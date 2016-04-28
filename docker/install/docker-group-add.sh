#!/bin/bash
gpasswd -a $1 docker
service docker restart
