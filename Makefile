NAME	=	Inception
SRCS	= ./srcs/docker-compose.yml

$(NAME)	:
	mkdir -p ${HOME}/data/db
	mkdir -p ${HOME}/data/web
	docker-compose -f $(SRCS) up --build -d
	docker ps -a

all		:	$(NAME)

clean	:
	docker-compose -f $(SRCS) down --remove-orphans --volumes
	docker system prune -a --volumes

fclean	:	clean
	rm -rf ${HOME}/data/db
	rm -rf ${HOME}/data/web

re		: fclean all

show	:
	docker ps -a