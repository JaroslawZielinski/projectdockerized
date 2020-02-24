FROM php:7.4-fpm-alpine

# install pdo_mysql and composer and other utilities
RUN apk update --no-cache \
    && apk add --no-cache $PHPIZE_DEPS \
    && apk add --no-cache mysql-dev \
    && apk add --no-cache git \
    && php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
    && php composer-setup.php --install-dir=/usr/bin --filename=composer \
    && php -r "unlink('composer-setup.php');" \
    && docker-php-ext-install pdo pdo_mysql

# install mysql client
RUN apk add --update mysql mysql-client && rm -f /var/cache/apk/*

# set up Europe/Warsaw timezone
RUN apk add --no-cache tzdata
ENV TZ=Europe/Warsaw

RUN apk add --no-cache sudo

# Add bash (compliance with ./magento enter php
RUN apk add --no-cache bash

# Add mc
RUN apk add --no-cache mc

# Add sl
RUN apk add --no-cache sl

# Configure php
COPY php.ini /usr/local/etc/php/php.ini
