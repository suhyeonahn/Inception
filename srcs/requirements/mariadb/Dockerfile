FROM debian:buster
LABEL org.opencontainers.image.authors="suahn@student.42.fr"
LABEL description="MariaDB Server"
#INSTALL MARIADB
RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y mariadb-server \
    && apt-get install -y sudo

EXPOSE 3306/tcp

COPY conf/setup.sql /docker-entrypoint-initdb.d/

RUN ["service", "mysql", "start"]
RUN sudo mysql -u root -p
CMD ["mysql"]