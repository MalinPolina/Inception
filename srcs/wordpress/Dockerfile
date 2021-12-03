FROM debian:buster
MAINTAINER daniseed <daniseed@student.21-school.ru>

RUN apt-get update
RUN apt-get install -y wget php7.3 php-fpm php-mysqli php-mbstring php-gd mariadb-client

ADD https://wordpress.org/latest.tar.gz /var/www/
RUN cd /var/www && tar -xvzf latest.tar.gz && rm -rf latest.tar.gz

COPY wp-config.php ./var/www/wordpress/
COPY www.conf /etc/php/7.3/fpm/pool.d/
RUN mkdir ./run/php

RUN touch /run/php/php7.3-fpm.pid
RUN chown -R www-data:www-data ./var/www/wordpress
RUN chown -R 755 /var/www/wordpress

EXPOSE 9000
CMD ["/usr/sbin/php-fpm7.3", "-F"]
