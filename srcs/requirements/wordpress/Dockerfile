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
    && apt-get install -y wget sudo

EXPOSE 3306/tcp
EXPOSE 9000/tcp

#INSTALL WORDPRESS
WORKDIR /var/www/html
#RUN wget https://wordpress.org/latest.tar.gz \
#    && tar -zxvf latest.tar.gz && rm -rf latest.tar.gz \
#    && mv wordpress/* . && rm -r wordpress
#CONFIG WORDPRESS
COPY conf/www.conf /etc/php/7.3/fpm/pool.d/
#COPY conf/wp-config.php .

#INSTALL WP-CLI
RUN wget -P ~/ https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
    && chmod +x ~/wp-cli.phar && sudo mv ~/wp-cli.phar /usr/local/bin/wp
COPY conf/setup.sh .
RUN ["chmod", "755", "setup.sh"]
RUN bash ./setup.sh
#CMD ["service", "php7.3-fpm", "start",";php", "-a"]
CMD service php7.3-fpm start; php -a