FROM debian:buster
LABEL org.opencontainers.image.authors="suahn@student.42.fr"
LABEL description="MariaDB Server"
#INSTALL MARIADB
RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y mariadb-server

EXPOSE 3306/tcp

COPY 
# RUN mysql < script.sql
# RUN mysql -e "CREATE DATABASE IF NOT EXISTS dbname;"

CMD ["mysqld"]