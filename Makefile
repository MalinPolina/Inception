all: up

build:
	docker-compose -f srcs/docker-compose.yml build

up:
	docker-compose -f srcs/docker-compose.yml up

start:
	docker-compose -f srcs/docker-compose.yml start

down:
	docker-compose -f srcs/docker-compose.yml down -v --rmi all

stop:
	docker-compose -f srcs/docker-compose.yml stop

kill:
	docker-compose -f srcs/docker-compose.yml kill

re: stop all

logs:
	docker-compose -f srcs/docker-compose.yml logs --tail=100 -f
ps:
	docker-compose -f srcs/docker-compose.yml ps

.PHONY: all build up start down stop kill re logs ps
