FROM debian:buster
MAINTAINER daniseed <daniseed@student.21-school.ru>

RUN apt-get update
RUN apt-get install -y nginx openssl

COPY . ./
COPY nginx.conf ./etc/nginx/sites-enabled/default
RUN mkdir -p /run/nginx

RUN openssl req -x509 -nodes -days 365 -subj "/C=RU/ST=Russia/L=Moscow/O=21school/OU=21moscow/CN=daniseed" -newkey rsa:2048 -keyout /etc/ssl/nginx.key -out /etc/ssl/nginx.crt;

RUN chown -R www-data:www-data /var/www/wordpress
RUN chown -R 755 /var/www/wordpress

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
