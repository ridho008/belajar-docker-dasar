


docker container stop mongovolume

docker container create --name nginxbackup --mount "type=bind,source=/media/asus/06D0D488D0D47EFD/Belajar Web/Programmer Zaman Now/belajar-docker-dasar/backup,destination=/backup" --mount "type=volume,source=mongodata,destination=/data" nginx:latest

docker container start nginxbackup

docker container exec -i -t nginxbackup /bin/bash

# membuat zip
tar cvf /backup/backup.tar.gz /data

# setelah berhasil zipper backupnya, stop containernya
docker container stop nginxbackup

docker container rm nginxbackup

docker container start mongovolume

# Menjalankan perintah backup sekaligus
docker container run --rm --name ubuntubackup --mount "type=bind,source=/media/asus/06D0D488D0D47EFD/Belajar Web/Programmer Zaman Now/belajar-docker-dasar/backup,destination=/backup" --mount "type=volume,source=mongodata,destination=/data" ubuntu:latest tar cvf /backup/backup-lagi-lagi.tar.gz data
