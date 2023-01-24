-mysql
https://dev.mysql.com/doc/refman/8.0/en/mysql-batch-commands.html# Inception
https://www.techonthenet.com/sql_server/users/create_user.php
https://docs.rackspace.com/support/how-to/mysql-connect-to-your-database-remotely/
https://askubuntu.com/questions/992771/mysql-u-root-doesnt-work-but-sudo-mysql-u-root-does-why


-wordpress config
https://www.wpbeginner.com/beginners-guide/how-to-edit-wp-config-php-file-in-wordpress/

-create user in db
https://mariadb.com/kb/en/create-user/

-wordpress&mysqr docker compose file example
https://github.com/docker/awesome-compose/blob/master/wordpress-mysql/compose.yaml


solve php-fpm sock error
https://jaedoong.tistory.com/entry/Docker%EB%A1%9C-Nginx-PHP-FPM-%EC%97%B0%EA%B2%B0

TRY THIS
https://stackoverflow.com/questions/29905953/how-to-correctly-link-php-fpm-and-nginx-docker-containers


vm root password: 950127

ADD WORDPRESS DATABASE ADMIN USER
https://www.linuxshelltips.com/create-new-wordpress-admin-mysql-commandline/


#Why does a basic PHP install require Apache?
#PHP requires one of three dependencies to exist on a machine:
#libapache2-mod-php
#php-fpm
#php-cgi
#A simple PHP install uses the libapache2-mod-php module by default,
#which requires installation of the full Apache HTTP server software suite.
#To avoid this, install either the php-cgi or the php-fpm module for Nginx.

mysql -u root -p
SELECT User FROM mysql.user;

git@vogsphere.42paris.fr:vogsphere/intra-uuid-6bcb5c85-2073-4baf-80ce-03ee341bf7d9-4625715-suahn
