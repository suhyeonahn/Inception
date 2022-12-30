FROM debian:buster
LABEL org.opencontainers.image.authors="suahn@student.42.fr"
LABEL description="Wordpress"
#INSTALL PHP SCRIPTING LANGUAGE that is needed to run WORDPRESS
RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y sudo wget ca-certificates apt-transport-https gnupg lsb-release \
    && wget -q https://packages.sury.org/php/apt.gpg -O- | apt-key add - \
    && echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | tee /etc/apt/sources.list.d/php.list \
    && apt-get update \
#Why does a basic PHP install require Apache?
#PHP requires one of three dependencies to exist on a machine:
#libapache2-mod-php
#php-fpm
#php-cgi
#A simple PHP install uses the libapache2-mod-php module by default,
#which requires installation of the full Apache HTTP server software suite.
#To avoid this, install either the php-cgi or the php-fpm module for Nginx.
    && apt-get install -y php8.2-fpm php8.2-common php8.2-cli php8.2-mysqli \
    php8.2-opcache php8.2-mbstring php8.2-xml php8.2-gd php8.2-curl

WORKDIR /var/www/html
#INSTALL WP-CLI
RUN wget -P ~/ https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
    && chmod +x ~/wp-cli.phar && sudo mv ~/wp-cli.phar /usr/local/bin/wp
EXPOSE 3306/tcp
EXPOSE 9000/tcp

#CONFIG WORDPRESS
COPY conf/www.conf /etc/php/8.2/fpm/pool.d/

COPY tools/setup.sh .
RUN ["chmod", "755", "setup.sh"]

CMD bash ./setup.sh && service php8.2-fpm start && php -a