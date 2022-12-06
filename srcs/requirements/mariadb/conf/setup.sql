CREATE DATABASE db;
GO
ALTER USER 'root'@'localhost' IDENTIFIED BY 'pass42';
GO
USE db;
GO
CREATE USER 'user'@'localhost' IDENTIFIED BY 'user';
GO