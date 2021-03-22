docker-compose build
docker-compose up -d 

# find key and root token in startup logs
docker logs vault

# remove everything
# docker-compose down