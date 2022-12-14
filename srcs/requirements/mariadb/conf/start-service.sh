#!/bin/sh

#SETUP DATABASE
#service mysql start
echo "CREATE DATABASE IF NOT EXISTS db;" | mysql -u root
echo "CREATE USER IF NOT EXISTS 'wp'@'%' IDENTIFIED BY 'pass';" | mysql -u root
echo "GRANT ALL ON db.* TO 'wp'@'%' IDENTIFIED BY 'pass' WITH GRANT OPTION;" | mysql -u root
echo "FLUSH PRIVILEGES;" | mysql -u root
#test
bash test.sh
#mysql user gains access to the data files
#mysqld