FROM debian:buster
LABEL org.opencontainers.image.authors="suahn@student.42.fr"
LABEL description="adminer"

RUN apt-get upgrade -y \
    && apt-get install -y sudo wget ca-certificates apt-transport-https gnupg lsb-release \
    && wget -q https://packages.sury.org/php/apt.gpg -O- | apt-key add - \
    && echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | tee /etc/apt/sources.list.d/php.list \
    && apt-get update \
    && apt-get install -y php8.1

RUN wget "http://www.adminer.org/latest.php" \
    -O /var/www/html/adminer.php

EXPOSE 8080/tcp

CMD ["php", "-S", "0.0.0.0:8080", "-t", "/var/www/html"]