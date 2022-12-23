FROM debian:buster
LABEL org.opencontainers.image.authors="suahn@student.42.fr"
LABEL description="Wordpress"
#INSTALL PHP SCRIPTING LANGUAGE that is needed to run WORDPRESS
RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y sudo wget ca-certificates apt-transport-https lsb-release \
    && wget -q https://packages.sury.org/php/apt.gpg -O- | apt-key add - \
    && echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | tee /etc/apt/sources.list.d/php.list \
#Why does a basic PHP install require Apache?
#PHP requires one of three dependencies to exist on a machine:
#libapache2-mod-php
#php-fpm
#php-cgi
#A simple PHP install uses the libapache2-mod-php module by default,
#which requires installation of the full Apache HTTP server software suite.
#To avoid this, install either the php-cgi or the php-fpm module for Nginx.
    && apt-get install -y php8.1-cli php8.1-fpm php8.1-mysqli php8.1-json php8.1-opcache php8.1-mbstring php8.1-xml php8.1-gd php8.1-curl \

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

CMD bash ./setup.sh; service php7.3-fpm start; php -a