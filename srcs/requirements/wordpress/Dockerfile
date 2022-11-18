FROM debian:buster
LABEL org.opencontainers.image.authors="suahn@student.42.fr"
LABEL description="Wordpress"
#INSTALL PHP SCRIPTING LANGUAGE that is needed to run WORDPRESS
RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y php libapache2-mod-php php-mysql php-fpm\
    && apt-get install -y wget
#INSTALL WORDPRESS & CLI
WORKDIR /var/www/html
RUN wget https://wordpress.org/latest.tar.gz \
    && tar -zxvf latest.tar.gz && rm -rf latest.tar.gz \
    && mv wordpress/* . && rm -r wordpress \
    && wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
#CONFIG WORDPRESS
COPY conf/wp-config.php .

CMD ["php-fpm"]
#CMD ["php", "wp-cli.phar", "server", "--allow-root"]