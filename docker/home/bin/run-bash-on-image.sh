#!/bin/bash
# $1=image
docker run --rm -it -v ~:/root $1 /bin/bash
