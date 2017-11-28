#!/bin/bash
docker run --rm -it -v `pwd`:/app vim-d9 \
	vim $@
