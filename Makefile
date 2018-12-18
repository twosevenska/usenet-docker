SHELL := /bin/bash

USENET_FILE = docker-compose.yml
DISCORD_FILE = docker-compose-jmusicbot.yml

.PHONY: clean usenet
usenet:
	docker-compose -f $(USENET_FILE) pull
	docker-compose -f $(USENET_FILE) kill
	docker-compose -f $(USENET_FILE) up -d

.PHONY: discord
discord:
	docker-compose -f $(DISCORD_FILE) kill
	docker-compose -f $(DISCORD_FILE) up -d

.PHONY: clean-docker
clean-docker:
	@docker volume rm $(shell docker volume ls -qf dangling=true) 2>/dev/null ||:
	@docker rmi $(shell docker images -q -f dangling=true) 2>/dev/null ||:

