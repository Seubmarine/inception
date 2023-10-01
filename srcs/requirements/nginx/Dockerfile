FROM debian:bullseye

RUN apt update && apt upgrade
RUN apt install openssl nginx -y openssl

RUN openssl req -batch -nodes -new -x509 -keyout /etc/nginx/server.key -out /etc/nginx/server.crt

COPY ./configuration/nginx.conf /etc/nginx/nginx.conf

EXPOSE 443

ENTRYPOINT [ "nginx", "-g", "daemon off;" ]