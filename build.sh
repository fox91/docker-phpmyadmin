#!/bin/bash
set -e
set -u
set -x

docker pull fox91/phpmyadmin:latest

# docker build -t fox91/phpmyadmin:latest ./
docker tag -f fox91/phpmyadmin:latest docker.io/fox91/phpmyadmin:4.5.4.1
docker tag -f fox91/phpmyadmin:latest docker.io/fox91/phpmyadmin:4.5

docker build -t fox91/phpmyadmin:4.4 ./4.4
docker tag -f fox91/phpmyadmin:4.4 docker.io/fox91/phpmyadmin:4.4.15.4
