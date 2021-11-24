FROM alpine:3.15
MAINTAINER daniseed <daniseed@student.21-school.ru>

RUN apk update upgrade
RUN apk add nginx openssl

#RUN adduser -D -g 'www' www
#RUN mkdir /www
#RUN chown -R www:www /var/lib/nginx
#RUN chown -R www:www /www

COPY . ./
COPY start.sh ./
RUN chmod +x ./start.sh
COPY nginx.conf ./etc/nginx/default
RUN mkdir -p /run/nginx

RUN openssl req -x509 -nodes -days 365 -subj "/C=RU/ST=Russia/L=Moscow/O=21school/OU=21moscow/CN=daniseed" -newkey rsa:2048 -keyout /etc/ssl/nginx.key -out /etc/ssl/nginx.crt;

EXPOSE 443

CMD ["./start.sh"]
