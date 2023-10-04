FROM debian:bullseye

RUN apt update && apt upgrade
RUN apt install openssl nginx -y openssl

RUN openssl req -batch -nodes -new -x509 -keyout /etc/nginx/server.key -out /etc/nginx/server.crt

COPY ./conf/nginx.conf /etc/nginx/nginx.conf

EXPOSE 443

RUN chmod 755 /var/www/html
RUN chown -R www-data:www-data /var/www/html

ENTRYPOINT [ "nginx", "-g", "daemon off;" ]