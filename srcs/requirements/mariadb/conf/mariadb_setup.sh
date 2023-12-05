#!/bin/bash

sleep 5
mysql << EOF
CREATE USER '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';
GRANT ALL PRIVILEGES ON wordpress.* TO '$MYSQL_USER'@'%';
EOF

mysqld_safe