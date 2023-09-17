include .env

build:
	docker-compose build
up:
	docker-compose --env-file .env up -d 
down:
	docker-compose down
to_psql:
	docker exec -ti dbt_psql psql postgres://${POSTGRES_USER}:${POSTGRES_PASSWORD}@${POSTGRES_HOST}:${POSTGRES_PORT}/${POSTGRES_DB}
