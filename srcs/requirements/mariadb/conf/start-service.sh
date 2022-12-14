#!/bin/sh

#SETUP DATABASE
service mysql start
echo "CREATE DATABASE IF NOT EXISTS db;" | mysql -u root
echo "CREATE USER IF NOT EXISTS 'wp'@'127.0.0.1' IDENTIFIED BY 'pass';" | mysql -u root
echo "GRANT ALL PRIVILEGES ON db.* TO 'wp'@'127.0.0.1';" | mysql -u root
echo "FLUSH PRIVILEGES;" | mysql -u root
#test
bash test.sh
#mysql user gains access to the data files
chown -R mysql:mysql /var/lib/mysql
mysqld