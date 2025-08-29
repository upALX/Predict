APP_NAME := predict
DOCKER_COMPOSE := docker compose

build:
	$(DOCKER_COMPOSE) build

up:
	$(DOCKER_COMPOSE) up -d

down:
	$(DOCKER_COMPOSE) down

rebuild:
	$(DOCKER_COMPOSE) build --no-cache

install:
	$(DOCKER_COMPOSE) run --rm app pip install -r requirements.txt

dev-setup:
	$(DOCKER_COMPOSE) run --rm app pip install -r requirements-dev.txt
	$(DOCKER_COMPOSE) run --rm app pre-commit install

lint:
	$(DOCKER_COMPOSE) exec app ruff check .

lint-fix:
	$(DOCKER_COMPOSE) exec app ruff check . --fix

format:
	$(DOCKER_COMPOSE) exec app ruff check . --fix

pre-commit-all:
	$(DOCKER_COMPOSE) exec app pre-commit run --all-files

tests:
	$(DOCKER_COMPOSE) exec app pytest -v

setup: build install dev-setup pre-commit-all
