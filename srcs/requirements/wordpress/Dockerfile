FROM debian:bullseye

RUN apt update && apt upgrade
RUN apt install wordpress php-fpm php-mysql wget -y

RUN mkdir -p /var/www/html/exemple.fr

RUN wget https://wordpress.org/latest.tar.gz
RUN tar -xvzf latest.tar.gz -C /var/www/html/exemple.fr

COPY ./conf/wp-config.php /var/www/html/exemple.fr/wordpress/wp-config.php

EXPOSE 9000

RUN mkdir -p /run/php
RUN mkdir -p var/run/

COPY	conf/default.conf /etc/php7/php-fpm.d/www.conf

#==== WORDPRESS ===============================================================#
RUN		chmod 777 				-R /var/www/html
RUN		chown 					-R www-data:www-data /var/www/html

CMD [ "/usr/sbin/php-fpm7.4", "-F" ]