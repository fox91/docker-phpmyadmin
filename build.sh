#!/bin/bash
set -e
set -u
set -x

# docker build -t fox91/phpmyadmin:latest ./
docker pull fox91/phpmyadmin:latest
IMAGE_ID=$(docker images -q fox91/phpmyadmin:latest)
docker tag "${IMAGE_ID}" fox91/phpmyadmin:4.6.0-fpm
docker tag "${IMAGE_ID}" fox91/phpmyadmin:4.6-fpm
docker tag "${IMAGE_ID}" fox91/phpmyadmin:fpm
docker tag "${IMAGE_ID}" fox91/phpmyadmin:4.6.0
docker tag "${IMAGE_ID}" fox91/phpmyadmin:4.6

# docker build -t fox91/phpmyadmin:4.6-apache ./
docker pull fox91/phpmyadmin:4.6-apache
IMAGE_ID=$(docker images -q fox91/phpmyadmin:4.6-apache)
docker tag "${IMAGE_ID}" fox91/phpmyadmin:4.6.0-apache
docker tag "${IMAGE_ID}" fox91/phpmyadmin:apache

# docker build -t fox91/phpmyadmin:4.4-fpm ./
docker pull fox91/phpmyadmin:4.4-fpm
IMAGE_ID=$(docker images -q fox91/phpmyadmin:4.4-fpm)
docker tag "${IMAGE_ID}" fox91/phpmyadmin:4.4.15.5-fpm
docker tag "${IMAGE_ID}" fox91/phpmyadmin:4.4.15.5
docker tag "${IMAGE_ID}" fox91/phpmyadmin:4.4

# docker build -t fox91/phpmyadmin:4.4-apache ./
docker pull fox91/phpmyadmin:4.4-apache
IMAGE_ID=$(docker images -q fox91/phpmyadmin:4.4-apache)
docker tag "${IMAGE_ID}" fox91/phpmyadmin:4.4.15.5-apache
