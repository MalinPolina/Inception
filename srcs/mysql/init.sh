#!/bin/sh

until mysql
do
	echo "NO_UP"
done

	echo "CREATE DATABASE wordpress;"| mysql -u root
	echo "CREATE USER 'root'@'%' IDENTIFIED BY $MYSQL_ROOT_PASSWORD REQUIRE SSL;" | mysql -u root
	echo "GRANT ALL PRIVILEGES ON wordpress.* TO 'root'@'%';" | mysql -u root
	echo "CREATE USER $MYSQL_USER@'%' IDENTIFIED WITH $MYSQL_PASSWORD REQUIRE SSL;" | mysql -u root
	echo "GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON wordpress.* TO $MYSQL_USER@'%';" | mysql -u root
	echo "FLUSH PRIVILEGES;" | mysql -u root
