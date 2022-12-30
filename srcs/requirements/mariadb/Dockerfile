FROM debian:buster
LABEL org.opencontainers.image.authors="suahn@student.42.fr"
LABEL description="MariaDB Server"
#INSTALL MARIADB
RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y mariadb-server \
    && apt-get install -y sudo

EXPOSE 3306/tcp

WORKDIR /etc/mysql
COPY conf/50-server.cnf ./mariadb.conf.d/
COPY tools/setup.sql .
RUN ["chmod", "755", "setup.sql"]
RUN service mysql start && sudo mysql < setup.sql

#mysql user gains access yto the data file
RUN chown -R mysql:mysql /var/lib/mysql

CMD ["mysqld"]