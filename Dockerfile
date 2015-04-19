FROM fox91/nginx-php:latest
MAINTAINER Andrea Falco <fox91fox@gmail.com>

RUN apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y \
      php5-mcrypt=${PHP_VERSION} \
      php5-gd=${PHP_VERSION} \
      php5-mysqlnd=${PHP_VERSION} \
 && apt-get autoremove \
 && apt-get autoclean \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD https://github.com/phpmyadmin/phpmyadmin/archive/RELEASE_4_4_2.tar.gz /tmp/RELEASE_4_4_2.tar.gz

COPY assets/setup/ /app/setup/
RUN chmod 755 /app/setup/install
RUN /app/setup/install

RUN rm -rf /tmp/* /var/tmp/*
