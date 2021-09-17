.PHONY: help
help:
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z0-9_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

.DEFAULT_GOAL := help

build=docker-compose --env-file=.env build --no-cache
up=docker-compose --env-file=.env up -d --no-deps

.PHONY: docker-create-network
docker-create-network: ## Create a network for docker.
	docker network inspect gobel_link >/dev/null 2>&1 || docker network create --driver bridge gobel_link

.PHONY: dockcer-compose-build
docker-compose-build: ## Build containers by docker compose.
	@$(build)

.PHONY: docker-compose-up
docker-compose-up: ## Run containers by docker-compose.
	@$(up)