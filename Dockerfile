FROM fox91/nginx-php:latest
MAINTAINER Andrea Falco <fox91fox@gmail.com>

ENV PHPMYADMIN_VERSION 4.4.10

RUN apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y \
      php5-mcrypt=${PHP_VERSION} \
      php5-gd=${PHP_VERSION} \
      php5-mysqlnd=${PHP_VERSION} \
      --no-install-recommends \
 && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD https://files.phpmyadmin.net/phpMyAdmin/${PHPMYADMIN_VERSION}/phpMyAdmin-${PHPMYADMIN_VERSION}-english.tar.gz /tmp/phpMyAdmin-${PHPMYADMIN_VERSION}-english.tar.gz

COPY assets/setup/ /app/setup/
RUN chmod 755 /app/setup/install
RUN /app/setup/install

RUN rm -rf /tmp/phpMyAdmin-${PHPMYADMIN_VERSION}-english.tar.gz
