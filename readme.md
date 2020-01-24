#dockerized symfony with php 7.3 + nginx + mysql + redis

docker-compose up -d --build //levanta los contenedores docker
docker ps -a // podrás ver los contenedores levantados y sus nombres
docker stop <name_container> //para parar un contenedor
docker start <name_container> //arrancar un contenedor
docker exect -it <name_container> <comand line> //accedes a dentro del contenedor para ejecutar un commando por ejemplo /bin/bash y tener acceso a la shell
