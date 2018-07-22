#!/bin/bash
docker run --rm -it \
	-v ~:/root -v `pwd`:/app -w /app \
	php7-d9 /bin/bash
