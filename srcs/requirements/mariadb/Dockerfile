FROM debian:buster
LABEL org.opencontainers.image.authors="suahn@student.42.fr"
LABEL description="MariaDB Server"
#INSTALL MARIADB
RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y mariadb-server \
    && apt-get install -y sudo

EXPOSE 3306/tcp

WORKDIR /docker-entrypoint-initdb.d

#COPY conf/setup.sql ./
#RUN ["chmod", "755", "setup.sql"]

COPY conf/test.sh ./
RUN ["chmod", "755", "test.sh"]

COPY conf/start-service.sh ./

#this runs the script within my own interactive shell,
#instead of spawning another shell to run it.
CMD . ./start-service.sh
#CMD ["bash", "start-service.sh"]