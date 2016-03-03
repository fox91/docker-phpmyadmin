#!/bin/bash
set -e
set -u
set -x

docker rmi fox91/phpmyadmin:4.5.5-fpm
docker rmi fox91/phpmyadmin:4.5-fpm
docker rmi fox91/phpmyadmin:fpm
docker rmi fox91/phpmyadmin:4.5.5
docker rmi fox91/phpmyadmin:4.5

docker rmi fox91/phpmyadmin:4.5.5-apache
docker rmi fox91/phpmyadmin:apache

docker rmi fox91/phpmyadmin:4.4.15.4-fpm
docker rmi fox91/phpmyadmin:4.4.15.4
docker rmi fox91/phpmyadmin:4.4

docker rmi fox91/phpmyadmin:4.4.15.4-apache
