FROM debian:buster
MAINTAINER daniseed <daniseed@student.21-school.ru>

RUN apt-get update
RUN apt-get install -y mariadb-server

COPY ./my.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
RUN chown -R mysql:mysql /var/lib/mysql
COPY start.sh ./
RUN chmod +x ./start.sh
COPY data_dump.sql ./

EXPOSE 3306
ENTRYPOINT ["./start.sh"]
CMD ["mysqld_safe", "--skip-networking=0", "--datadir=/var/lib/mysql"]
