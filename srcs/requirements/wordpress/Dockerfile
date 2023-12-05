FROM debian:bullseye

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install wordpress php-fpm php-mysql wget -y curl -y

#COPY ./conf/wp-config.php /var/www/html/exemple.fr/wordpress/wp-config.php
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
&& chmod +x wp-cli.phar \
&& mv wp-cli.phar /usr/local/bin/wp


EXPOSE 9000

RUN mkdir -p /run/php

COPY	conf/www.conf /etc/php/7.4/fpm/pool.d/

#==== WORDPRESS ===============================================================#
RUN		chmod 777 				-R /var/www/html
RUN		chown 					-R www-data:www-data /var/www/html

COPY ./conf/setup.sh /usr/local/bin/setup.sh
RUN chmod +x /usr/local/bin/setup.sh
ENTRYPOINT ["/usr/local/bin/setup.sh"]

WORKDIR /var/www/html/

CMD [ "/usr/sbin/php-fpm7.4", "-F" ]