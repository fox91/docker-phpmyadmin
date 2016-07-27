#!/bin/bash
set -e
set -u
set -x

docker push fox91/phpmyadmin:4.6.3-fpm
docker push fox91/phpmyadmin:4.6-fpm
docker push fox91/phpmyadmin:fpm
docker push fox91/phpmyadmin:4.6.3
docker push fox91/phpmyadmin:4.6

docker push fox91/phpmyadmin:4.6.3-apache
docker push fox91/phpmyadmin:apache

docker push fox91/phpmyadmin:4.4.15.7-fpm
docker push fox91/phpmyadmin:4.4.15.7
docker push fox91/phpmyadmin:4.4

docker push fox91/phpmyadmin:4.4.15.7-apache
