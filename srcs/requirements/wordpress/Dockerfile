FROM debian:bullseye

RUN apt update && apt upgrade
RUN apt install wordpress php-fpm php-mysql wget -y

RUN mkdir -p /var/www/html/exemple.fr

RUN wget https://wordpress.org/latest.tar.gz
RUN tar -xvzf latest.tar.gz -C /var/www/html/exemple.fr

EXPOSE 9000

ENTRYPOINT [""]