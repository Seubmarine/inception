FROM debian:bullseye

RUN apt-get update -y && apt upgrade -y
RUN apt-get install mariadb-server -y

RUN mkdir -p /run/mysqld
run chmod 755 /run/mysqld
run chown mysql:mysql /run/mysqld

COPY conf/mariadb_setup.sh mariadb_setup.sh
COPY conf/my.cnf /etc/mysql/maria.conf.d/

RUN chmod +x mariadb_setup.sh

EXPOSE 3306
ENTRYPOINT ["./mariadb_setup.sh"]