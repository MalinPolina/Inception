FROM debian:buster
MAINTAINER daniseed <daniseed@student.21-school.ru>

RUN apt-get update
RUN apt-get install -y nginx openssl

COPY . ./
COPY nginx.conf ./etc/nginx/sites-enabled/default
COPY start.sh ./
RUN  chmod +x ./start.sh

RUN openssl req -x509 -nodes -days 365 -subj "/C=RU/ST=Russia/L=Moscow/O=21school/OU=21moscow/CN=daniseed" -newkey rsa:2048 -keyout /etc/ssl/nginx.key -out /etc/ssl/nginx.crt;

RUN mkdir ./var/www/static
COPY secret.html ./var/www/static/

EXPOSE 443
ENTRYPOINT ["./start.sh"]
CMD ["nginx", "-g", "daemon off;"]
