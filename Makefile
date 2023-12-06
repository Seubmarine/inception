
start:
	docker-compose -f srcs/docker-compose.yml up -d

stop:
	docker-compose -f srcs/docker-compose.yml down

build:
	docker-compose -f srcs/docker-compose.yml build

restart: stop start

clean:
	docker-compose -f srcs/docker-compose.yml rm -v


.PHONY: start stop build restart clean