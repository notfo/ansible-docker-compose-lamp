THIS_FILE := $(lastword $(MAKEFILE_LIST))
.PHONY: help build up start down destroy stop restart deploy
help:
	make -pRrq  -f $(THIS_FILE) : 2>/dev/null | awk -v RS= -F: '/^# File/,/^# Finished Make data base/ {if ($$1 !~ "^[#.]") {print $$1}}' | sort | egrep -v -e '^[^[:alnum:]]' -e '^$@$$'
build:
	cp sample.env .env
	docker-compose build $(c)
up:
	cp sample.env .env
	docker-compose up -d $(c)
start:
	docker-compose start $(c)
down:
	docker-compose down $(c)
destroy:
	docker-compose down -v $(c)
stop:
	docker-compose stop $(c)
restart:
	docker-compose stop $(c)
	docker-compose up -d $(c)
deploy:
	ansible-playbook playbook.yml $(c)
