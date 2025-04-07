# Télécharger les images
docker pull mariadb
docker pull wordpress

docker run --detach -p 3306:3306 --name Base_De_Donnee --env MARIADB_USER=Dubois --env MARIADB_PASSWORD=Ght10Pom@1$ --env MARIADB_DATABASE=wordpress --env MARIADB_ROOT_PASSWORD=root   mariadb:latest

docker run --name Dubois_wordpress exec -t -i Base_De_Donnee /bin/bash -d wordpress
