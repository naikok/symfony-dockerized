#!/bin/bash
# Un script simple
docker-compose up -d --build
sudo docker stop container_redis
sudo docker start container_redis
sudo docker stop symfonydockerized_php_1
sudo docker start symfonydockerized_php_1
sudo docker stop container_mysql
sudo docker start container_mysql
sudo docker stop container_nginx
sudo docker start container_nginx

