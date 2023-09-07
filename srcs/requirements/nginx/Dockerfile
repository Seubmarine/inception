FROM debian:bullseye
RUN apt update && apt upgrade

RUN apt install openssl nginx -y openssl

COPY ./configuratin/nginx.conf /etc/nginx/nginx.conf

ENTRYPOINT [ "nginx" ]

EXPOSE 443
