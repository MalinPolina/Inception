all: up

build:
	docker-compose -f srcs/docker-compose.yml build

up:
	docker-compose -f srcs/docker-compose.yml up -d

start:
	docker-compose -f srcs/docker-compose.yml start

down:
	docker-compose -f srcs/docker-compose.yml down

stop:
	docker-compose -f srcs/docker-compose.yml stop

kill:
	docker-compose -f srcs/docker-compose.yml kill

re: stop all

ps:
	docker-compose -f srcs/docker-compose.yml ps

clean:
	docker-compose -f srcs/docker-compose.yml down -v --rmi all

fclean: clean
	sudo docker system prune -a --force
	sudo rm -Rf ../../data/mysql
	sudo rm -Rf ../../data/wordpress
	mkdir ../../data/mysql
	mkdir ../../data/wordpress

.PHONY: all build up start down stop kill re ps clean fclean
