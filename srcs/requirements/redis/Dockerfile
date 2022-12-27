FROM debian:buster
LABEL org.opencontainers.image.authors="suahn@student.42.fr"
LABEL description="Redis"

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y redis-server php-redis

COPY conf/redis.conf /etc/redis/
#test if redis is installed
RUN redis-cli && 127.0.0.1:6379> ping

EXPOSE 6379/tcp

CMD service redis-server start; redis-cli