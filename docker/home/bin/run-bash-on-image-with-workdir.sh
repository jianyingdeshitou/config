#!/bin/bash
# $1=image
docker run --rm -it \
	-v ~:/root -v `pwd`:/app -w /app \
	$1 /bin/bash
