#!/bin/bash
if  [ ! -f "/var/www/html/wp-config.php" ]; then
    #wp plugin install insert-headers-and-footers --activate
    wp core download --allow-root
    wp config create --dbname=$MYSQL_DATABASE --dbuser=$MYSQL_USER --dbpass=$MYSQL_PASSWORD --dbhost=$WORDPRESS_DB_HOST --path="/var/www/html/" --allow-root --skip-check --extra-php <<PHP
        define('WP_REDIS_HOST', 'redis');
        define('WP_REDIS_PORT', '6379');
        define('WP_REDIS_PASSWORD', 'pass');
        define('WP_CACHE_KEY_SALT', 'domain.tld');
    PHP
    wp core install --url=$WORDPRESS_URL --title=$WORDPRESS_TITLE --admin_user=$WORDPRESS_ADMIN --admin_password=$WORDPRESS_ADMIN_PASSWORD --admin_email=$WORDPRESS_ADMIN_EMAIL --allow-root
    wp user create $WORDPRESS_USER $WORDPRESS_USER_EMAIL --user_pass=$WORDPRESS_USER_PASSWORD --role='editor' --path="/var/www/html/" --allow-root
fi
