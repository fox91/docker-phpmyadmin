#!/bin/bash
set -e
set -u
set -x

docker rmi fox91/phpmyadmin:4.6.0-fpm
docker rmi fox91/phpmyadmin:4.6-fpm
docker rmi fox91/phpmyadmin:fpm
docker rmi fox91/phpmyadmin:4.6.0
docker rmi fox91/phpmyadmin:4.6

docker rmi fox91/phpmyadmin:4.6.0-apache
docker rmi fox91/phpmyadmin:apache

docker rmi fox91/phpmyadmin:4.4.15.5-fpm
docker rmi fox91/phpmyadmin:4.4.15.5
docker rmi fox91/phpmyadmin:4.4

docker rmi fox91/phpmyadmin:4.4.15.5-apache
