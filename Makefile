compose:
	docker compose -f srcs/docker-compose.yml up --build

nginx: srcs/requirements/nginx/Dockerfile
	docker build -t nginx srcs/requirements/nginx/.

prune:
	docker system prune

all: compose

re: prune all