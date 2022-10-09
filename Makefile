PROJECT_NAME = sql

up:
	docker-compose -p $(PROJECT_NAME) up -d

down:
	docker-compose -p $(PROJECT_NAME) stop

clean: down
	@docker rm $$(docker ps -qa) || true
	@docker rmi -f $$(docker images -qa) || true
	@docker volume rm $$(docker volume ls -q) || true
	@docker network rm $$(docker network ls -q) 2>/dev/null || true

fclean: clean
	docker system prune -a