CREATE DATABASE IF NOT EXISTS db;
CREATE USER IF NOT EXISTS 'wp'@'%' IDENTIFIED BY 'pass';
GRANT ALL PRIVILEGES ON db.* TO 'wp'@'%' IDENTIFIED BY 'pass' WITH GRANT OPTION;
FLUSH PRIVILEGES;

ALTER USER 'root'@'localhost' IDENTIFIED BY 'root_pass';
