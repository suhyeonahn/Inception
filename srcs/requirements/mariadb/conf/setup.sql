CREATE DATABASE IF NOT EXISTS wordpress;
CREATE USER IF NOT EXISTS 'wp'@'%' IDENTIFIED BY 'pass';
GRANT ALL PRIVILEGES ON db.* TO 'wp'@'%' IDENTIFIED BY 'pass' WITH GRANT OPTION;
FLUSH PRIVILEGES;

ALTER USER 'root'@'localhost' IDENTIFIED BY 'root_pass';

USE wordpress;
INSERT INTO `wp_users` (`user_login`, `user_pass`, `user_email`, `user_registered`, `user_status`)
VALUES('$WORDPRESS_ADMIN_USER', '$WORDPRESS_ADMIN_PASS', 'agent@example.com', '2022-12-21 16:34:15', 0);