#!/bin/bash

docker-compose pull
docker-compose build

docker-compose up -d api

docker-compose exec api rails db:create
docker-compose exec api rails db:migrate
docker-compose exec api rails db:seed
