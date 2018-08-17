#!/bin/bash

case $1 in
build)
    docker build -t lisijie/php ./
    ;;
run)
    docker run -v /data/www:/data/www -d -p 9000:9000 --name php lisijie/php
    ;;
start)
    docker start php
    ;;
stop)
    docker stop php
    ;;
restart)
    docker stop php
    docker start php
    ;;
esac
