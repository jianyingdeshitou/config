#!/bin/bash
docker run --rm -it -v `pwd`:/app dev-php7-d9 \
    composer create-project --prefer-dist laravel/laravel /app 5.4.*
