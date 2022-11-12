# Docker Compose LAMP stack built and Ansible deploy

 Стек:

- PHP8
- Apache
- MySQL8
- phpMyAdmin



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
- Чтобы масштабировать приложение (backend) например до 15
```shell
make upscale backend=15
```

-Тестовый Sql-дамп находится в папке ./config/initdb.
-Тестовым PHP-скриптом является index.php в папке ./www



## Не используйте данный тестовый проект в продакшене!

Этот проект предназначен для тестирования и демонстрации.
Для использования в продакшен-среде необходимо решить следующие проблемы с безопасностью минимум:

- php handler: mod_php=> php-fpm
- secure mysql users with proper source IP limitations
