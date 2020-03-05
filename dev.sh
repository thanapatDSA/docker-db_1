#!/bin/sh
DIR=`dirname $0`

docker rm -f jerwa-redis
docker rm -f jerwa-mongo
docker rm -f jerwa-api

echo "✅ Start docker ..."
docker-compose -f $DIR/docker-compose.yml up -d --build jerwa-redis
docker-compose -f $DIR/docker-compose.yml up -d --build jerwa-mongo
docker-compose -f $DIR/docker-compose.yml up -d --build jerwa-api

sleep 5
docker logs -f jerwa-api