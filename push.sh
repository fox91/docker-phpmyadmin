#!/bin/bash
set -e
set -u
set -x

docker push docker.io/fox91/phpmyadmin:4.6.0-fpm
docker push docker.io/fox91/phpmyadmin:4.6-fpm
docker push docker.io/fox91/phpmyadmin:fpm
docker push docker.io/fox91/phpmyadmin:4.6.0
docker push docker.io/fox91/phpmyadmin:4.6
# docker push docker.io/fox91/phpmyadmin:latest

docker push docker.io/fox91/phpmyadmin:4.6.0-apache
# docker push docker.io/fox91/phpmyadmin:4.6-apache
docker push docker.io/fox91/phpmyadmin:apache

docker push docker.io/fox91/phpmyadmin:4.4.15.5-fpm
# docker push docker.io/fox91/phpmyadmin:4.4-fpm
docker push docker.io/fox91/phpmyadmin:4.4.15.5
docker push docker.io/fox91/phpmyadmin:4.4

docker push docker.io/fox91/phpmyadmin:4.4.15.5-apache
# docker push docker.io/fox91/phpmyadmin:4.4-apache
