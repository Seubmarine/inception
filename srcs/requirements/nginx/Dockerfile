FROM debian:bullseye
RUN apt update && apt upgrade

RUN apt install openssl nginx -y openssl

COPY ./configuration/nginx.conf /etc/nginx/nginx.conf

ENTRYPOINT [ "nginx" ]

EXPOSE 443
