## PostgreSQL docker-compose

### About

This project contains a simple PostgreSQL image for educational purposes.

### Stack:

* Docker
* docker-compose
* PostgreSQL image

### Usage

* `docker-compose up -d` - run
* `docker-compose stop` - stop

### or with Makefile

* `make up` - run
* `make down` - stop
* `make clean` - clear all data
* `make fclean` - clear all data and cache

### Connection

* Host: localhost:5432
* Database: sql
* User: postgres
* Password: postgres