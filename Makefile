compose:
	docker compose -f srcs/docker-compose.yml up --build

prune:
	docker system prune

all: compose

re: prune all