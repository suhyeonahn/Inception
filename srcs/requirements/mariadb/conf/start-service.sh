#!/bin/sh

#SETUP DATABASE
service mysql start
echo "CREATE DATABASE db;" | mysql -u root
echo "CREATE USER 'user'@'localhost' IDENTIFIED BY 'user';" | mysql -u root
echo "GRANT ALL PRIVILEGES ON db.* TO 'user'@'localhost' IDENTIFIED BY 'user';" | mysql -u root
echo "FLUSH PRIVILEGES;" | mysql -u root
#test
bash test.sh
#mysql user gains access to the data files
chown -R mysql:mysql /var/lib/mysql
mysqld