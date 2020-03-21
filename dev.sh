#!/bin/sh
DIR=`dirname $0`

docker rm -f db-mongo_1

echo "✅ Start docker ..."
docker-compose -f $DIR/docker-compose.yml up -d

sleep 5
docker exec -it db-mongo_1 ./root/entrypoint.sh
docker logs -f db-mongo_1