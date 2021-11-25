FROM alpine:3.15
MAINTAINER daniseed <daniseed@student.21-school.ru>

RUN apk update
RUN apk add mysql mysql-client
RUN apk add openrc

COPY ./ .
RUN mv ./db.sql /
RUN mkdir -p /run/openrc/
RUN touch /run/openrc/softlevel

#COPY ./my.cnf /etc/mysql/my.cnf
#COPY ./my.cnf /etc/mysql/mariadb.conf.d/
#COPY ./db.sql /
#COPY start.sh ./

#RUN /etc/init.d/mariadb setup
RUN rc-service mariadb start > /dev/null 2>&1
RUN openrc > /dev/null 2>&1 && rc-service mariadb start > /dev/null 2>&1

RUN mysql --execute="CREATE DATABASE database;"
RUN mysql --execute="GRANT ALL PRIVILEGES ON database.* TO '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';"
RUN mysql --execute="FLUSH PRIVILEGES;"
#RUN mysql database < db.sql
RUN mysql --execute="ALTER USER 'root'@'localhost' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD'; FLUSH PRIVILEGES;"

#RUN mysql_install_db --user=root
#RUN systemctl start mariadb
#RUN mysql --execute="CREATE DATABASE db;"
#RUN mysql db < db.sql
#RUN chmod +x /start.sh
#RUN sh start.sh

EXPOSE 3306
CMD ["mysqld_safe", "--skip-networking=0"]
