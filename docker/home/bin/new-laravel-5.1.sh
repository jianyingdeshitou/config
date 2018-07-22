#!/bin/bash
docker run --rm -it -v `pwd`:/app php7-d9 \
    composer create-project --prefer-dist laravel/laravel /app 5.1.*
