#!/bin/bash

mysql_secure_installation << EOF

y
123456
123456
y
y
y
y
y
EOF

mysql -uroot -p123456 -e "create database wordpress"
mysql -uroot -p123456 -e "create user wordpress identified by '123456'"
mysql -uroot -p123456 -e "grant all privileges on wordpress.* to wordpress@localhost identified by '123456'"
