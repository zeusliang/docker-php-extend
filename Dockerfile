FROM php:7.2.8-apache
COPY index.php /usr/local/etc/php
RUN set -e && \
    docker-php-source extract && \
    docker-php-ext-configure pdo_mysql --with-pdo-mysql=mysqlnd && \
    docker-php-ext-install pdo_mysql && \
    docker-php-ext-enable pdo_mysql && \
    docker-php-source delete


