YELLOW = \033[1;33m
RESET = \033[0m

NAME	=	Inception
SRCS	= ./srcs/docker-compose.yml

$(NAME)	: credit
	@echo "$(YELLOW)"
	@echo "🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🍯🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🍯🐝🐝🐝🐝🐝🐝"
	@echo "🍯                                                            🐝"
	@echo "🐝 Create volumes on host computer                            🐝"
	@echo "🐝                                                            🐝"
	@echo "🐝🐝🐝🐝🐝🍯🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🍯🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝"
	@echo "$(RESET)"
	mkdir -p ${HOME}/data/db
	mkdir -p ${HOME}/data/web
	@echo "$(YELLOW)"
	@echo "🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🍯🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🍯🐝🐝🐝"
	@echo "🐝                                                            🐝"
	@echo "🐝 Build images & Run containers                              🐝"
	@echo "🐝                                                            🐝"
	@echo "🍯🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🍯🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝"
	@echo "$(RESET)"
	@docker-compose -f $(SRCS) up --build -d
	@echo "$(YELLOW)"
	@echo "🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🍯🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝"
	@echo "🐝                                                            🐝"
	@echo "🍯 Show running containers                                    🐝"
	@echo "🐝                                                            🐝"
	@echo "🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🍯🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🍯🐝🐝"
	@echo "$(RESET)"
	@docker ps -a
	@echo "$(YELLOW)"
	@echo "🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🍯🐝🐝🐝🐝🐝🍯🐝🐝🐝🐝🐝🐝"
	@echo "🐝                                                            🐝"
	@echo "🐝 Show volumes                                    	         🐝"
	@echo "🐝                                                            🐝"
	@echo "🐝🐝🐝🍯🐝🐝🐝🐝🍯🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝"
	@echo "$(RESET)"
	@docker volume inspect db-data web-data
	@echo "$(YELLOW)"
	@echo "🍯🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🍯🐝🐝🐝🐝🐝🐝🐝"
	@echo "🐝                                                            🐝"
	@echo "🐝 Show networks                                 	 	 	 🐝"
	@echo "🐝                                                            🍯"
	@echo "🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🍯🐝🐝🐝🐝🍯🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝"
	@echo "$(RESET)"
	@docker network ls

all		: $(NAME)

clean	:
	@echo "$(YELLOW)"
	@echo "🐝🍯🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝"
	@echo "🐝                                                            🍯"
	@echo "🐝 Down containers & RM images,volumes                        🐝"
	@echo "🐝                                                            🐝"
	@echo "🐝🐝🐝🐝🐝🐝🍯🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🍯🐝🐝🐝"
	@echo "$(RESET)"
	@docker-compose -f $(SRCS) down --remove-orphans --volumes
	@docker system prune -a --volumes

fclean	:	clean
	@echo "$(YELLOW)"
	@echo "🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🍯🐝🐝🐝🐝🐝🐝🐝🍯🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝"
	@echo "🐝                                                            🐝"
	@echo "🐝 Remove volumes from host computer                          🐝"
	@echo "🐝                                                            🐝"
	@echo "🐝🐝🐝🐝🍯🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🍯🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝🐝"
	@echo "$(RESET)"
	@sudo rm -rf ${HOME}/data

re			:	fclean all

credit	:
	@echo "$(YELLOW)"
	@echo "❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙"
	@echo "❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙"
	@echo "❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙"
	@echo "██╗███╗░░██╗░█████╗░███████╗██████╗░████████╗██╗░█████╗░███╗░░██╗"
	@echo "██║████╗░██║██╔══██╗██╔════╝██╔══██╗╚══██╔══╝██║██╔══██╗████╗░██║"
	@echo "██║██╔██╗██║██║░░╚═╝█████╗░░██████╔╝░░░██║░░░██║██║░░██║██╔██╗██║"
	@echo "██║██║╚████║██║░░██╗██╔══╝░░██╔═══╝░░░░██║░░░██║██║░░██║██║╚████║"
	@echo "██║██║░╚███║╚█████╔╝███████╗██║░░░░░░░░██║░░░██║╚█████╔╝██║░╚███║"
	@echo "╚═╝╚═╝░░╚══╝░╚════╝░╚══════╝╚═╝░░░░░░░░╚═╝░░░╚═╝░╚════╝░╚═╝░░╚══╝"
	@echo "❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙"
	@echo "❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚ by suahn . 42 🌟 ❙❘❚❙❘❚❙"
	@echo "❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙❘❚❙"
	@echo "$(RESET)"