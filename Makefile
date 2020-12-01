.PHONY: image delete

IMAGE ?= acme.io/postgres

# name of the image to build
DOCKER_COMPOSE ?= docker-compose
COMPOSE_POSTGRES ?= -f docker-compose.postgres.yml 

image:
	$(DOCKER_COMPOSE) $(COMPOSE_POSTGRES) build

delete:
	docker image rm $(IMAGE)
