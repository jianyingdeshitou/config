#!/bin/bash
DATE=`data +%Y%m%d`
docker tag $1 $1:$DATE
