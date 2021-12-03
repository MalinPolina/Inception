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
RUN chown -R mysql:mysql /var/lib/mysql
COPY start.sh ./
RUN chmod +x ./start.sh
#COPY ./db.sql /
#RUN service mysql start 
#RUN sleep 10
#RUN mysql -u root -e mysql < db.sql
#RUN service mysql stop
#RUN rm -f db.sql

#COPY db.sql /docker-entrypoint-initdb.d/

#RUN /bin/bash -c "/usr/bin/mysqld_safe  &" && \
#	sleep 10 && \
#	mysql -u root my_db < /docker-entrypoint-initdb.d/db.sql
#RUN service mysql stop

#RUN service mysql start && \
#        sleep 5 && \
#        mysql -u root -e "CREATE DATABASE IF NOT EXISTS my_db;" && \
#        mysql -u root -e "CREATE USER IF NOT EXISTS 'daniseed'@'%' IDENTIFIED BY 'password';" && \
#        mysql -u root -e "GRANT ALL PRIVILEGES ON my_db.* TO 'daniseed'@'%';" && \
#        mysql -u root -e "FLUSH PRIVILEGES;" && \
#        mysqladmin -u root password secret


#RUN service mysql start && \
#	sleep 5 && \
#	mysql -u root -e "CREATE DATABASE IF NOT EXISTS my_db;" && \
#	mysql -u root -e "CREATE USER IF NOT EXISTS '$USER'@'%' IDENTIFIED BY '$PASSWORD';" && \
#	mysql -u root -e "GRANT ALL PRIVILEGES ON my_db.* TO '$USER'@'%';" && \
#	mysql -u root -e "FLUSH PRIVILEGES;" && \
#	mysqladmin -u root password $MYSQL_ROOT_PASSWORD
#	mysql -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '$ROOT_PASSWORD';"

#RUN rm -f db.sql
#RUN service mysql stop

#RUN chown -R mysql /var/run/mysqld

EXPOSE 3306
ENTRYPOINT ["./start.sh"]
#CMD ["mysqld"]
CMD ["mysqld_safe", "--skip-networking=0", "--datadir=/var/lib/mysql"]
#CMD ["mysqld_safe"]
#CMD ["mysqld_safe", "--datadir=/var/lib/mysql", "--user=mysql"]
