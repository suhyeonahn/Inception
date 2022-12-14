FROM debian:buster
LABEL org.opencontainers.image.authors="suahn@student.42.fr"
LABEL description="Wordpress"
#INSTALL PHP SCRIPTING LANGUAGE that is needed to run WORDPRESS
RUN apt-get update \
    && apt-get upgrade -y \
#Why does a basic PHP install require Apache?
#PHP requires one of three dependencies to exist on a machine:
#libapache2-mod-php
#php-fpm
#php-cgi
#A simple PHP install uses the libapache2-mod-php module by default,
#which requires installation of the full Apache HTTP server software suite.
#To avoid this, install either the php-cgi or the php-fpm module for Nginx.
    && apt-get install -y php-cli php-fpm php-mysqli php-json php-opcache php-mbstring php-xml php-gd php-curl \
    && apt-get install -y wget

EXPOSE 3306/tcp
EXPOSE 9000/tcp

#INSTALL WORDPRESS
WORKDIR /var/www/html
RUN wget https://wordpress.org/latest.tar.gz \
    && tar -zxvf latest.tar.gz && rm -rf latest.tar.gz \
    && mv wordpress/* . && rm -r wordpress
#CONFIG WORDPRESS
COPY conf/www.conf /etc/php/7.3/fpm/pool.d/
COPY conf/wp-config.php .

#SETUP PHPMYADMIN
RUN wget https://www.phpmyadmin.net/downloads/phpMyAdmin-latest-all-languages.tar.gz \
    && tar xvf phpMyAdmin-latest-all-languages.tar.gz && rm -rf phpMyAdmin-latest-all-languages.tar.gz \
    && mv phpMyAdmin-5.2.0-all-languages phpmyadmin
#CONFIG PHPMYADMIN
COPY conf/config.inc.php phpmyadmin/

RUN echo "<?php phpinfo(); ?>" >> /var/www/html/info.php

#CMD ["service", "php7.3-fpm", "start",";php", "-a"]
CMD service php7.3-fpm start; php -a