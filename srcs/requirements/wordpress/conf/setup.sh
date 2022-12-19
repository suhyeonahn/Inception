#!/bin/bash
WP_CONFIG= "/var/www/html/wp-config.php"
if  [ ! -f "$WP_CONFIG" ]; then
    #chek if it's installed
    wp --info
    #download the latest version of the WordPress core files.
    wp core download
    #create the wp-config.php file
    wp core config --dbname=$MYSQL_DATABASE --dbuser=$MYSQL_USER --dbpass=$MYSQL_PASSWORD --dbhost=$WORDPRESS_DB_HOST --dbprefix=$WORDPRESS_TABLE_PREFIX --allow-root
    #wp db create
    wp core install --admin_user=$WORDPRESS_ADMIN_USER --admin_password=$WORDPRESS_ADMIN_PASSWORD --allow-root
    wp user create $WORDPRESS_USER "https://suahn.42.fr" --user_pass=$WORDPRESS_USER_PASS --role=Default --allow-root
fi
