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
WORKDIR /docker-entrypoint-initdb.d


COPY conf/test.sh ./
RUN ["chmod", "755", "test.sh"]

#OPY conf/setup.sql ./
#RUN ["chmod", "755", "setup.sql"]
#RUN service mysql start && mysql < setup.sql

COPY conf/start-service.sh ./
RUN ["chmod", "755", "start-service.sh"]
RUN service mysql start && . ./start-service.sh
RUN chown -R mysql:mysql /var/lib/mysql

#this runs the script within my own interactive shell,
#instead of spawning another shell to run it.
#CMD . ./start-service.sh
#CMD ["bash", "start-service.sh"]
CMD ["mysqld"]