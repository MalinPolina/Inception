FROM debian:buster
MAINTAINER daniseed <daniseed@student.21-school.ru>

RUN apt-get update
RUN apt-get install -y mariadb-server

ARG ROOT_PASSWORD
ARG USER
ARG PASSWORD

#COPY ./ .
#COPY ./db.sql /
#COPY ./my.cnf /etc/mysql/
#RUN chown -R 755 /var/lib/mysql/

COPY ./my.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY ./db.sql /
RUN service mysql start && mysql < db.sql
RUN rm -f db.sql

#COPY db.sql /docker-entrypoint-initdb.d/

#RUN /bin/bash -c "/usr/bin/mysqld_safe &" && \
#	sleep 5 && \
#	mysql -u root -e "CREATE DATABASE wordpress" && \
#	mysql -u root wordpress < /docker-entrypoint-initdb.d/db.sql

#RUN service mysql start && \
#	mysql -u root -e "CREATE DATABASE wordpress;" && \
#	mysql -u root -e "CREATE USER '$USER'@'%' IDENTIFIED BY '$PASSWORD';" && \
#	mysql -u root -e "GRANT ALL PRIVILEGES ON wordpress.* TO '$USER'@'%';" && \
#	mysql -u root -e "FLUSH PRIVILEGES;" && \
#	mysql -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '$ROOT_PASSWORD';"

#RUN rm -f db.sql

EXPOSE 3306
CMD ["mysqld_safe", "--skip-networking=0"]
#CMD ["mysqld_safe"]
#CMD ["mysqld_safe", "--datadir=/var/lib/mysql", "--user=mysql"]
