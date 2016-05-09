#!/bin/bash
set -e
set -u
set -x

docker push fox91/phpmyadmin:4.6.1-fpm
docker push fox91/phpmyadmin:4.6-fpm
docker push fox91/phpmyadmin:fpm
docker push fox91/phpmyadmin:4.6.1
docker push fox91/phpmyadmin:4.6

docker push fox91/phpmyadmin:4.6.1-apache
docker push fox91/phpmyadmin:apache

docker push fox91/phpmyadmin:4.4.15.5-fpm
docker push fox91/phpmyadmin:4.4.15.5
docker push fox91/phpmyadmin:4.4

docker push fox91/phpmyadmin:4.4.15.5-apache
