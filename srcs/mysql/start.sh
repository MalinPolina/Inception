#!/bin/sh

sed -i 's/skip-networking/#skip-networking/g' /etc/my.cnf.d/mariadb-server.cnf

mysql_install_db --user=root --datadir=/var/lib/mysql

nohup ./init.sh > /dev/null 2>&1 &

mysqld_safe --datadir=/var/lib/mysql
