.PHONY: help
help:
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z0-9_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

.DEFAULT_GOAL := help

build=docker-compose build
up=docker-compose up --no-deps -d

.PHONY: Create a network if it not exists 
docker-create-network: ## Create a network for docker.
	docker network inspect gobel_link >/dev/null 2>&1 || docker network create --driver bridge gobel_link

.PHONY: dockcer-compose-build
docker-compose-build: ## Build containers by docker compose.
	@$(build)

.PHONY: Run containers with detach mode
docker-compose-up: ## Run containers by docker-compose.
	@$(up)