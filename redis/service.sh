#!/bin/bash

case $1 in
run)
    docker run -v `pwd`/redis.conf:/usr/local/etc/redis/redis.conf -d -p 6379:6379 --network bridge --name redis redis
    ;;
start)
    docker start redis
    ;;
stop)
    docker stop redis
    ;;
restart)
    docker restart redis
    ;;
esac
