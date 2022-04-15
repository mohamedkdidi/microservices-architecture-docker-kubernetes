docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
#docker rmi $(docker images -q)
docker volume prune -f
docker-compose down --volumes
docker-compose down --rmi all --volumes