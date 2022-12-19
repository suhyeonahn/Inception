FROM debian:buster
LABEL org.opencontainers.image.authors="suahn@student.42.fr"
LABEL description="adminer"

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y php php-common wget

RUN wget "http://www.adminer.org/latest.php" \
    -O /var/www/html/adminer.php

EXPOSE 8080

CMD ["php", "-S", "0.0.0.0:8080", "-t", "/var/www/html"]