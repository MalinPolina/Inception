#!/bin/sh

#rc-service mariadb start > /dev/null 2>&1
#openrc > /dev/null 2>&1 && rc-service mariadb start > /dev/null 2>&1
#mysql_install_db --user=mysql > /dev/null

#sed -i 's/skip-networking/#skip-networking/g' /etc/my.cnf.d/mariadb-server.cnf

#mysqld_safe --datadir=/var/lib/mysql

mysql_install_db --user=root > /dev/null
mysql wordpress < db.sql
#mysql --execute="CREATE DATABASE wordpress;"
#mysql --execute="CREATE USER 'root'@'%' IDENTIFIED BY $MYSQL_ROOT_PASSWORD RREQUIRE SSL;"
#mysql --execute="GRANT ALL PRIVILEGES ON wordpress.* TO 'root'@'%';"
#mysql --execute="CREATE USER $MYSQL_USER@'%' IDENTIFIED WITH $MYSQL_PASSWORD REQUIRE SSL;"
#mysql --execute="GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON wordpress.* TO $MYSQL_USER@'%';"
#mysql --execute="FLUSH PRIVILEGES;" 

#mysql_install_db --user=root --datadir=/var/lib/mysql

#mysqld_safe --datadir=/var/lib/mysql
