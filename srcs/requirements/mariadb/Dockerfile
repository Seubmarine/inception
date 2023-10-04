FROM debian:bullseye

RUN apt update && apt upgrade
RUN apt install mariadb-server -y

COPY conf/mariadb_setup.sh mariadb_setup.sh
COPY conf/my.cnf /etc/mysql/maria.conf.d/

EXPOSE 3306
ENTRYPOINT ["./mariadb_setup.sh"]