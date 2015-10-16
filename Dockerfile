FROM fox91/php:5.6.14-fpm
MAINTAINER Andrea Falco <fox91fox@gmail.com>

# gpg: key 81AF644A: public key "Marc Delisle <marc@infomarc.info>" imported
RUN gpg --keyserver pgp.mit.edu --recv-keys 81AF644A

RUN persistentDeps=" \
     libfreetype6 \
     libjpeg62-turbo \
     libmcrypt4 \
     libpng12-0 \
     libvpx1 \
     libxpm4 \
 " \
 && buildDeps=" \
     libfreetype6-dev \
     libjpeg62-turbo-dev \
     libmcrypt-dev \
     libpng12-dev \
     libvpx-dev \
     libxpm-dev \
 " \
 && set -x \
 && DEBIAN_FRONTEND=noninteractive apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y $persistentDeps $buildDeps --no-install-recommends \
 && docker-php-ext-configure gd \
     --with-jpeg-dir=/usr/include/ \
     --with-png-dir=/usr/include/ \
     --with-xpm-dir=/usr/include/ \
     --with-vpx-dir=/usr/include/ \
     --with-freetype-dir=/usr/include/ \
     --enable-gd-native-ttf \
 && docker-php-ext-install gd mcrypt \
 && DEBIAN_FRONTEND=noninteractive apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false $buildDeps \
 && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENV PHPMYADMIN_VERSION 4.4.15

COPY bin /usr/bin

RUN set -x \
 && cd /tmp \
 && curl -SL "https://files.phpmyadmin.net/phpMyAdmin/$PHPMYADMIN_VERSION/phpMyAdmin-$PHPMYADMIN_VERSION-english.tar.gz" -o phpMyAdmin.tar.gz \
 && curl -SL "https://files.phpmyadmin.net/phpMyAdmin/$PHPMYADMIN_VERSION/phpMyAdmin-$PHPMYADMIN_VERSION-english.tar.gz.asc" -o phpMyAdmin.tar.gz.asc \
 && gpg --verify phpMyAdmin.tar.gz.asc \
 && tar -xzC /usr/src/myapp/public --strip-components=1 -f phpMyAdmin.tar.gz \
 && rm phpMyAdmin.tar.gz* \
 && bash /usr/bin/phpmyadmin-setup

VOLUME /usr/src/myapp
