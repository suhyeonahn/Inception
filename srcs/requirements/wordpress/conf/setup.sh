#!/bin/bash
WP_USER= "/var/www/html/users"
if  [ ! -f "$WP_USER" ]; then
    wp core install --admin_user=$WORDPRESS_ADMIN_USER --admin_password=$WORDPRESS_ADMIN_PASSWORD --allow-root
    wp user create $WORDPRESS_USER "https://suahn.42.fr" --user_pass=$WORDPRESS_USER_PASS --role=Default --allow-root
    touch users
fi