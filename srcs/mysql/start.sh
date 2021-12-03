#!/usr/bin/env bash
service mysql start
sleep 5
mysql -u root -e "CREATE DATABASE IF NOT EXISTS my_db"
mysql -u root -e "CREATE USER IF NOT EXISTS '$USER'@'%' IDENTIFIED BY '$PASSWORD'"
mysql -u root -e "GRANT ALL PRIVILEGES ON my_db.* TO '$USER'@'%'"
mysql -u root -e "FLUSH PRIVILEGES;" && \
mysqladmin -u root password $MYSQL_ROOT_PASSWORD
service mysql stop
exec "$@"
