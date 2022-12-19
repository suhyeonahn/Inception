#!/bin/bash
WP-CONFIG= "/var/www/html/wp-config.php"
if [! -f "$WP-CONFIG"]; then
    #chek if it's installed
    wp --info
    #download the latest version of the WordPress core files.
    wp core download
    #create the wp-config.php file
    wp core config --dbname=$MYSQL_DATABASE --dbuser=$MYSQL_USER --dbpass=$MYSQL_PASSWORD --dbhost=$WORDPRESS_DB_HOST --dbprefix=$WORDPRESS_TABLE_PREFIX
    #wp db create
    wp core install --url="https://suahn.42.fr" --title="suahn's home" --admin_user=$WORDPRESS_ADMIN_USER --admin_password=$WORDPRESS_ADMIN_PASSWORD --admin_email="suahn@student.42.fr"
    wp user create --user_login=$WORDPRESS_DEFAULT_USE --user_pass=$WORDPRESS_DEFAULT_PASSWORD --role="Default"
fi