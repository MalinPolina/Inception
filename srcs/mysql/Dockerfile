FROM alpine:3.15
MAINTAINER daniseed <daniseed@student.21-school.ru>

RUN apk update
RUN apk add mysql mysql-client
RUN apk add openrc

COPY ./ .
RUN mkdir -p /run/openrc/
RUN touch /run/openrc/softlevel
COPY ./my.cnf /etc/mysql/my.cnf
COPY ./my.cnf /etc/mysql/mariadb.conf.d/
COPY ./db.sql /
#COPY start.sh ./

#RUN /etc/init.d/mariadb setup
RUN rc-service mariadb start

#RUN mysql_install_db --user=root
#RUN systemctl start mariadb
RUN mysql --execute="CREATE DATABASE db;"
RUN mysql db < db.sql
#RUN chmod +x /start.sh
#RUN sh start.sh

#EXPOSE 3306
CMD ["mysqld_safe", "--skip-networking=0"]
