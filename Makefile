RED = \033[1;31m
GREEN = \033[1;32m
YELLOW = \033[1;33m
BLUE = \033[1;34m
RESET = \033[0m
On_IYellow="\[\033[0;103m\]"
BBlack="\[\033[1;30m\]" 

NAME	=	Inception
SRCS	= ./srcs/docker-compose.yml

$(NAME)	:
	echo "$(On_IYellow)$(BBlack)"
	echo "🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝"
	echo "🐝Create volume folders on host computer🐝"
	echo "🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝"
	echo "$(RESET)"
	mkdir -p ${HOME}/data/db
	mkdir -p ${HOME}/data/web
	echo "$(On_IYellow)$(BBlack)"
	echo "🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝"
	echo "🐝Build images & Run containers🐝"
	echo "🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝"
	echo "$(RESET)"
	docker-compose -f $(SRCS) up --build -d
	show

all		:	$(NAME)

clean	:
	echo "$(On_IYellow)$(BBlack)"
	echo "🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝"
	echo "🐝Down containers & RM images and volumes🐝"
	echo "🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝"
	echo "$(RESET)"
	docker-compose -f $(SRCS) down --remove-orphans --volumes
	docker system prune -a --volumes

fclean	:	clean
	echo "$(On_IYellow)$(BBlack)"
	echo "🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝"
	echo "🐝Remove volume folders🐝"
	echo "🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝"
	echo "$(RESET)"
	sudo rm -rf ${HOME}/data

re		: fclean all

show	:
	echo "$(On_IYellow)$(BBlack)"
	echo "🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝"
	echo "🐝Show running containers🐝"
	echo "🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝"
	echo "$(RESET)"
	docker ps -a