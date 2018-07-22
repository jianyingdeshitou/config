#/bin/bash
#Install as a container
# $1=1.21.2
curl -L https://github.com/docker/compose/releases/download/$1/run.sh > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
