#!/bin/bash
docker run --rm -it -v `pwd`:/app -v ~:/root git-d9 \
	git $@
