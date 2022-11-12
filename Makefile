THIS_FILE := $(lastword $(MAKEFILE_LIST))
.PHONY: build up upscale start down destroy stop restart deploy

build:
	cp sample.env .env
	docker-compose build $(c)
up:
	cp sample.env .env
	docker-compose up -d $(c)
upscale:
	cp sample.env .env
	docker-compose up -d --scale backend=$(backend)
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
