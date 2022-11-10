# LAMP stack built with Docker Compose and Ansible deploy

 Стек:

- PHP8
- Apache
- MySQL8
- phpMyAdmin
- Redis


## Установка

- Клонируйте этот репозиторий
```shell
git clone https://github.com/notfo/ansible-docker-compose-lamp.git
```
- Отредактируйте файл .env или скопируйте параметры сервера по умолчанию из sample.env
- Чтобы развернуть Docker Compose LAMP на локальной машине используйте утилиту make (параметры сервера будут установлены из sample.env

```shell
make up
```
- Чтобы развернуть Docker Compose LAMP на серверах, указанных в inventory-файле Ansible
```shell
make deploy
```
Тестовый Sql-дамп находится в папке ./config/initdb
Тестовый PHP-скрипт является index.php в папке ./www


* На данный момент не реализовано масштабирование backend-контейнера через docker swarm и scale



## Не используйте данный тестовый проект в продакшене!

Этот проект предназначен для тестирования и демонстрации.
Для использования в продакшен-среде необходимо решить следующие проблемы с безопасностью минимум:

- php handler: mod_php=> php-fpm
- secure mysql users with proper source IP limitations
