#!/bin/bash
# $1=container
# $2=workdir
docker exec -it -w $2 $1 /bin/bash
