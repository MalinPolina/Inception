FROM alpine:3.12

RUN apk update
RUN apk add mariadb mariadb-server

COPY start.sh ./
RUN chmod +x /start.sh
COPY init.sh ./
RUN chmod +x /init.sh

EXPOSE 3306

CMD ["./start.sh"]
