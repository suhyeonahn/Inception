# system administration project using Docker.

Set up a small infrastructure composed of different services with following rules. <br />
• A Docker container that contains NGINX with TLSv1.2 or TLSv1.3 only. <br />
• A Docker container that contains WordPress + php-fpm (it must be installed and
configured) only without nginx. <br />
• A Docker container that contains MariaDB only without nginx. <br />
• A volume that contains a WordPress database. <br />
• A second volume that contains a WordPress website files. <br />
• A docker-network that establishes the connection between the container. <br />
• The containers have to restart in case of a crash. <br />

![ince](https://github.com/suhyeonahn/Inception/assets/54574221/869288b2-f193-46d3-b884-b400adca284b)
