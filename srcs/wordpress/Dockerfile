FROM debian:buster
MAINTAINER daniseed <daniseed@student.21-school.ru>

RUN apt-get update

RUN apt-get install -y wget php7.3 php-fpm php-mysqli mariadb-client

RUN wget https://wordpress.org/latest.tar.gz
RUN tar -xvzf latest.tar.gz && rm -rf latest.tar.gz

COPY wp-config.php ./var/www/wordpress/
COPY www.conf /etc/php/7.3/fpm/pool.d/
RUN mkdir ./run/php

EXPOSE 9000
CMD ["/usr/sbin/php-fpm7.3", "-F"]
