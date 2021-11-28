FROM debian:buster
MAINTAINER daniseed <daniseed@student.21-school.ru>

RUN apt-get update
RUN apt-get install mariadb-server -y

COPY ./ .
RUN mv ./db.sql /
COPY ./my.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
RUN service mysql start && mysql < db.sql

EXPOSE 3306
CMD ["mysqld_safe"]
