#!/usr/bin/env bash
service mysql start
sleep 5
#mysql -u root -e "CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE;"
#mysql -u root -e "CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';"
#mysql -u root -e "GRANT ALL PRIVILEGES ON $MYSQL_DATABASE.* TO '$MYSQL_USER'@'%';"
#mysql -u root -e "FLUSH PRIVILEGES;" && \
#mysqladmin -u root password $MYSQL_ROOT_PASSWORD
mysql < data_dump.sql
service mysql stop
exec "$@"
