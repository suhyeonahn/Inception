FROM debian:buster
LABEL org.opencontainers.image.authors="suahn@student.42.fr"
LABEL description="Redis"

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y sudo wget ca-certificates apt-transport-https gnupg lsb-release \
    && wget -q https://packages.sury.org/php/apt.gpg -O- | apt-key add - \
    && echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | tee /etc/apt/sources.list.d/php.list \
    && apt-get update \
    && apt-get install -y redis-server php8.2-redis

COPY conf/redis.conf /etc/redis/
#test if redis is installed
#RUN redis-cli && 127.0.0.1:6379> ping

EXPOSE 6379/tcp

CMD service redis-server start; redis-cli