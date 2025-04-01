.PHONY: build up down logs

build:
	docker compose build

up:
	docker compose up -d

in:
	docker compose exec -it app bash

down:
	docker compose down

logs:
	docker compose logs -f
