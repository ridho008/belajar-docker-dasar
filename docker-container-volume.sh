



docker volume create mongodata
docker container create --name mongovolume --publish 27020:27017 --mount "type=volume,source=mongodata,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=ridho --env MONGO_INITDB_ROOT_PASSWORD=ridho mongo:latest
docker container stop mongovolume
docker container rm mongovolume

# sehingga ketika kita membuat collection data, saat menghapus containernya. data collection akan tetap disimpan di dalam volume. untuk mengembalikan collection, buat lagi container volumenya.