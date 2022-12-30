FROM debian:buster
LABEL org.opencontainers.image.authors="suahn@student.42.fr"
LABEL description="MariaDB Server"
#INSTALL MARIADB
RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y mariadb-server \
    && apt-get install -y sudo

EXPOSE 3306/tcp

COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/

WORKDIR /

COPY tools/setup.sql .
RUN ["chmod", "755", "setup.sql"]
RUN service mysql start && sudo mysql < setup.sql

#mysql user gains access to the data file
RUN chown -R mysql:mysql /var/lib/mysql
RUN mkdir -p /var/run/mysqld
RUN chown -R mysql:mysql /var/lib/mysqld


CMD ["mysqld"]