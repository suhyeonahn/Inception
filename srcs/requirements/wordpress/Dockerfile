FROM debian:buster
LABEL org.opencontainers.image.authors="suahn@student.42.fr"
#INSTALL PHP SCRIPTING LANGUAGE that is needed to run WORDPRESS
RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y php libapache2-mod-php php-mysql \
    && apt-get install -y wget
#INSTALL WORDPRESS
WORKDIR /var/www/html
RUN wget https://wordpress.org/latest.tar.gz \
    && tar -zxvf latest.tar.gz && rm -rf latest.tar.gz \
    && mv wordpress/* ./ && rm -r wordpress

CMD ["service", "wordpress", "start"]