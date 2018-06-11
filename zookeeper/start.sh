#!/bin/bash
echo "启动一个zookeeper实例，导出端口2181 2888 3888"
echo "https://hub.docker.com/_/zookeeper/"
docker run --name zookeeper --network bridge --restart always -p 2181:2181 -p 2888:2888 -p 3888:3888 -d zookeeper
