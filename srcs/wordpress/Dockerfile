FROM alpine:3.15
MAINTAINER daniseed <daniseed@student.21-school.ru>

RUN apk update upgrade

RUN apk add wget php7 php7-fpm php7-mysqli mysql-client

RUN wget https://wordpress.org/latest.tar.gz
RUN tar -xvzf latest.tar.gz && rm -rf latest.tar.gz

COPY wp-config.php ./var/www/wordpress/
COPY www.conf /etc/php/7/fpm/pool.d/

CMD ./usr/sbin/php-fpm7 -F
