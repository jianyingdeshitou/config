#!/bin/bash
docker run --rm -it -v `pwd`:/app nodejs-d9 \
	npm $@
