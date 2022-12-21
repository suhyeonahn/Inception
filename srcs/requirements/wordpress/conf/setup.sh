#!/bin/bash
WP_CONFIG= "/var/www/html/WP_CONFIG"
if  [ ! -f "$WP_CONFIG" ]; then
    wp core install --url=$WORDPRESS_URI --title=$WORDPRESS_TITLE --admin_user=$WORDPRESS_ADMIN --admin_password=$WORDPRESS_ADMIN_PASSWORD --admin_email=$WORDPRESS_ADMIN_EMAIL --allow-root
    wp user create $WORDPRESS_USER $WORDPRESS_USER_EMAIL --user_pass=$WORDPRESS_USER_PASSWORD --role='editor' --allow-root
    touch WP_CONFIG
fi