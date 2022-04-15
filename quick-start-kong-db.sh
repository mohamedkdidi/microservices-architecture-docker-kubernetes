#!/bin/bash

echo "Starting kong-database..."

docker-compose -f docker-compose-prod.yml up -d kong-db

STATUS="starting"

while [ "$STATUS" != "healthy" ]
do
    STATUS=$(docker inspect --format {{.State.Health.Status}} kong-db)
    echo "kong-database state = $STATUS"
    sleep 5
done


echo "Running database migrations..."

docker-compose -f docker-compose-prod.yml run --rm kong kong migrations bootstrap --vv
echo "Starting kong..."

docker-compose -f docker-compose-prod.yml up -d kong

echo "Kong admin running http://127.0.0.1:8001/"
echo "Kong proxy running http://127.0.0.1/"

echo "Starting konga..."
docker-compose -f docker-compose-prod.yml up -d konga
echo "Konga running http://127.0.0.1:1337/"
