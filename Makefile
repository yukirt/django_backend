env ?= local

run:
	docker-compose --file docker-compose/$(env).yml \
		up \
		--no-recreate
down:
	docker-compose --file docker-compose/$(env).yml \
		down
restart:
	docker-compose --file docker-compose/$(env).yml \
		restart 

# daisgo-api
django/migrate:
	docker-compose --file docker-compose/$(env).yml exec django sh -c "python manage.py migrate" &&\
	docker-compose --file docker-compose/$(env).yml \
		restart \
		django
