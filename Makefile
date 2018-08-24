NAME=dbdocker

run:
	docker-compose build
	docker-compose run --rm waitfordb
	docker-compose up -d postgres app

stop:
	docker stop ${NAME}_app_1 ${NAME}_postgres_1
	docker rm -f ${NAME}_app_1 ${NAME}_postgres_1
