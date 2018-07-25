#!/bin/bash

docker network create -d overlay traefik_backends

docker stack deploy traefik --compose-file docker-compose.yml

docker stack deploy elastic --compose-file docker-compose-elasticsearch.yml

docker service scale elastic_elasticsearch=2
