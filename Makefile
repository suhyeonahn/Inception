YELLOW = \033[1;33m
RESET = \033[0m

NAME	=	Inception
SRCS	= ./srcs/docker-compose.yml

$(NAME)	:
	@echo "$(YELLOW)"
	@echo "🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🍯🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝"
	@echo "🍯                                        🐝"
	@echo "🐝 Create volume folders on host computer 🐝"
	@echo "🐝                                        🐝"
	@echo "🐝🐝🐝🐝🐝🍯🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🍯🐝🐝🐝🐝"
	@echo "$(RESET)"
	@mkdir -p ${HOME}/data/db
	@mkdir -p ${HOME}/data/web
	@echo "$(YELLOW)"
	@echo "🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🍯🐝🐝🐝🐝🐝🐝🐝🐝🍯🐝🐝"
	@echo "🐝                                        🐝"
	@echo "🐝      Build images & Run containers     🐝"
	@echo "🐝                                        🐝"
	@echo "🍯🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🍯🐝🐝🐝🐝🐝"
	@echo "$(RESET)"
	@docker-compose -f $(SRCS) up --build -d
	@show

all		:	$(NAME)

clean	:
	@echo "$(YELLOW)"
	@echo "🐝🍯🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝"
	@echo "🐝                                        🍯"
	@echo "🐝  Down containers & RM images - volumes 🐝"
	@echo "🐝                                        🐝"
	@echo "🐝🐝🐝🐝🐝🐝🍯🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝"
	@echo "$(RESET)"
	@docker-compose -f $(SRCS) down --remove-orphans --volumes
	@docker system prune -a --volumes

fclean	:	clean
	@echo "$(YELLOW)"
	@echo "🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🍯🐝🐝🐝🐝🐝🐝🐝🍯🐝"
	@echo "🐝                                        🐝"
	@echo "🐝 Remove volume folders on host computer 🐝"
	@echo "🐝                                        🐝"
	@echo "🐝🐝🐝🐝🍯🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🍯🐝🐝🐝"
	@echo "$(RESET)"
	@sudo rm -rf ${HOME}/data

re		: fclean all

show	:
	@echo "$(YELLOW)"
	@echo "🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🍯🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝"
	@echo "🐝                                        🐝"
	@echo "🍯          Show running containers       🐝"
	@echo "🐝                                        🐝"
	@echo "🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🍯🐝🐝🐝🐝🐝🐝"
	@echo "$(RESET)"
	@docker ps -a