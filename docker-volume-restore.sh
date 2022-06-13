

docker volume create mongorestore

# bash -c "cd /data && tar xvf /backup/backup-lagi.tar.gz --strip 1" = script, untuk mengesktrak file yang akan di pindahkan ke volume baru
docker container run --rm --name ubunturestore --mount "type=bind,source=/media/asus/06D0D488D0D47EFD/Belajar Web/Programmer Zaman Now/belajar-docker-dasar/backup,destination=/backup" --mount "type=volume,source=mongorestore,destination=/data" ubuntu:latest bash -c "cd /data && tar xvf /backup/backup-lagi.tar.gz --strip 1"

docker container create --name mongorestore --publish 27021:27017 --mount "type=bind,source=/media/asus/06D0D488D0D47EFD/Belajar Web/Programmer Zaman Now/belajar-docker-dasar/mongo-data,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=ridho --env MONGO_INITDB_ROOT_PASSWORD=ridho mongo:latest

docker container start mongorestore