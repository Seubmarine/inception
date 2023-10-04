#!/bin/bash

service mariadb start;
sleep 3

# mysql_secure_installation <<EOF
# y
# secret
# secret
# y
# y
# y
# y
# EOF



mariadb -u root -p$MYSQL_ROOT_PASSWORD -e "CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE;
CREATE USER IF NOT EXISTS '$MYSQL_USERNAME'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';
GRANT ALL PRIVILEGES ON $MYSQL_DATABASE.* TO '$MYSQL_USERNAME'@'%';
ALTER USER 'root'@'localhost' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD';
flush privileges;"
mysqladmin -u root -p$MYSQL_ROOT_PASSWORD shutdown
sleep 1

exec mysqld