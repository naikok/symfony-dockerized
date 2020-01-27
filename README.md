equirements:

For this project I have decided to use symfony 5 framework under php 7.2 + nginx + mysql

Installation:

Make sure you have docker installed at your computer

1) Clone the symfony-dockerized repository from 

2) Once is done, get into the symfony-dockerized folder and remove the folder symfony (here goes the project). After that clone the repository symfony and you will see a new folder symfony created.

3) Wake up docker! You will see a file run.sh within the symfony-dockerized folder

    Execute the bash code for waking up all docker containers and execute as root:

4) sudo sh run.sh (Wake up all required containers to make it work)

4) Once is finished, get access to the symfony container php. In order to to do this:
   Execute sudo sh sudo docker exec -it symfonydockerized_php_1 /bin/bash
    
After that you will see a new bash shell under the path /var/www/symfony.

5) Run composer to install required dependencies composer install

5) In that new shell you must execute a command line to create doctrine database. 
   php bin/console doctrine:database:create
   
6) Execute doctrine migration

   php bin/console doctrine:migrations:migrate 20201227105444

7) Open a browser and go to http://127.0.0.1:8001 and you will be able to see the symfony app running!




