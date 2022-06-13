

docker container create --name mongodata-1 --publish 27019:27017 --mount "type=bind,source=/media/asus/06D0D488D0D47EFD/Belajar Web/Programmer Zaman Now/belajar-docker-dasar/mongo-data,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=ridho --env MONGO_INITDB_ROOT_PASSWORD=ridho mongo:latest