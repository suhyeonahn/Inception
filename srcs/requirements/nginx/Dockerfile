FROM debian:buster
LABEL org.opencontainers.image.authors="suahn@student.42.fr"
LABEL description="Nginx Server"
#INSTALL NGINX & OPENSSL
RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y nginx \
    && apt-get install -y openssl
#CONFIG NGINX & SSL
COPY conf/default /etc/nginx/sites-enabled/
RUN mkdir -p /etc/nginx/ssl \
    && openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout \
    /etc/nginx/ssl/ssl_cert.key -out /etc/nginx/ssl/ssl_cert.crt \
    -subj "/C=FR/ST=Paris/L=Paris/O=42 School/OU=Suahn/CN=localhost/EA=suahn@student.42.fr"

EXPOSE 443/tcp
RUN echo "<?php phpinfo(); ?>" >> /var/www/html/info.php

#RUN ["service", "nginx", "start"]
#run in debug mode (foreground)
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]