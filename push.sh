#!/bin/bash
set -e
set -u
set -x

docker push docker.io/fox91/phpmyadmin:4.5.5.1-fpm
docker push docker.io/fox91/phpmyadmin:4.5-fpm
docker push docker.io/fox91/phpmyadmin:fpm
docker push docker.io/fox91/phpmyadmin:4.5.5.1
docker push docker.io/fox91/phpmyadmin:4.5
# docker push docker.io/fox91/phpmyadmin:latest

docker push docker.io/fox91/phpmyadmin:4.5.5.1-apache
# docker push docker.io/fox91/phpmyadmin:4.5-apache
docker push docker.io/fox91/phpmyadmin:apache

docker push docker.io/fox91/phpmyadmin:4.4.15.5-fpm
# docker push docker.io/fox91/phpmyadmin:4.4-fpm
docker push docker.io/fox91/phpmyadmin:4.4.15.5
docker push docker.io/fox91/phpmyadmin:4.4

docker push docker.io/fox91/phpmyadmin:4.4.15.5-apache
# docker push docker.io/fox91/phpmyadmin:4.4-apache
