# Inception

Virtualize several Docker images, creating them in your new personal virtual machine.

A small infrastructure composed of different services under specific rules. The whole project is done in a virtual machine.

Each Docker image have the same name as its corresponding service.

Each service runs in a dedicated container.

For performance matters, the containers are built from the penultimate stable version of Debian Buster.

Project set up:

• A Docker container that contains NGINX with TLSv1.2 or TLSv1.3 only

• A Docker container that contains WordPress + php-fpm only without nginx

• A Docker container that contains MariaDB only without nginx

• A volume that contains your WordPress database

• A second volume that contains your WordPress website files

• A docker-network that establishes the connection between your containers

Containers restart in case of a crash.
