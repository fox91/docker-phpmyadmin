#!/bin/bash
set -e
set -u
set -x

docker pull fox91/phpmyadmin:latest
# docker build -t fox91/phpmyadmin:latest ./
docker tag fox91/phpmyadmin:latest docker.io/fox91/phpmyadmin:4.5.5-fpm
docker tag fox91/phpmyadmin:latest docker.io/fox91/phpmyadmin:4.5-fpm
docker tag fox91/phpmyadmin:latest docker.io/fox91/phpmyadmin:fpm
docker tag fox91/phpmyadmin:latest docker.io/fox91/phpmyadmin:4.5.5
docker tag fox91/phpmyadmin:latest docker.io/fox91/phpmyadmin:4.5

docker pull fox91/phpmyadmin:4.5-apache
# docker build -t fox91/phpmyadmin:4.5-apache ./4.5-apache
docker tag fox91/phpmyadmin:4.5-apache docker.io/fox91/phpmyadmin:4.5.5-apache
docker tag fox91/phpmyadmin:4.5-apache docker.io/fox91/phpmyadmin:apache

docker pull fox91/phpmyadmin:4.4-fpm
# docker build -t fox91/phpmyadmin:4.4-fpm ./4.4-fpm
docker tag fox91/phpmyadmin:4.4-fpm docker.io/fox91/phpmyadmin:4.4.15.4-fpm
docker tag fox91/phpmyadmin:4.4-fpm docker.io/fox91/phpmyadmin:4.4.15.4
docker tag fox91/phpmyadmin:4.4-fpm docker.io/fox91/phpmyadmin:4.4

docker pull fox91/phpmyadmin:4.4-apache
# docker build -t fox91/phpmyadmin:4.4-apache ./4.4-apache
docker tag fox91/phpmyadmin:4.4-apache docker.io/fox91/phpmyadmin:4.4.15.4-apache
