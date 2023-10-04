FROM debian:bullseye

RUN apt-get update -y && apt upgrade -y
RUN apt-get install mariadb-server -y

COPY conf/mariadb_setup.sh mariadb_setup.sh
COPY conf/my.cnf /etc/mysql/maria.conf.d/

EXPOSE 3306
ENTRYPOINT ["./mariadb_setup.sh"]