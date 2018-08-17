#!/bin/bash

dir=$(pwd)

case $1 in
run)
    docker run --name mysql -v /data/mysql:/var/lib/mysql -v $dir/custom.cnf:/etc/mysql/conf.d/custom.cnf -p 3306:3306 -e MYSQL_ROOT_PASSWORD=root -d mysql:5.7
    ;;
start)
    docker start mysql
    ;;
stop)
    docker stop mysql
    ;;
restart)
    docker restart mysql
    ;;
esac
