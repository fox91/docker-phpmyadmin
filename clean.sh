#!/bin/bash
set -e
set -u
set -x

# fox91/phpmyadmin:latest
docker rmi fox91/phpmyadmin:4.6.1-fpm
docker rmi fox91/phpmyadmin:4.6-fpm
docker rmi fox91/phpmyadmin:fpm
docker rmi fox91/phpmyadmin:4.6.1
docker rmi fox91/phpmyadmin:4.6

# fox91/phpmyadmin:4.6-apache
docker rmi fox91/phpmyadmin:4.6.1-apache
docker rmi fox91/phpmyadmin:apache

# fox91/phpmyadmin:4.4-fpm
docker rmi fox91/phpmyadmin:4.4.15.5-fpm
docker rmi fox91/phpmyadmin:4.4.15.5
docker rmi fox91/phpmyadmin:4.4

# fox91/phpmyadmin:4.4-apache
docker rmi fox91/phpmyadmin:4.4.15.5-apache
