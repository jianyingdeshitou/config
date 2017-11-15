#!/bin/bash
docker run --rm -it -v `pwd`:/app dev-php7-d9 php $@
