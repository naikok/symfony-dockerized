Requirements:

For this project I have decided to use symfony 5 framework under php 7.2 + nginx + mysql

Installation:

Make sure you have docker installed at your computer

1) First of all, clone this repository from https://github.com/naikok/symfony-dockerized.git

2) Once is done, get into the symfony-dockerized folder that has been already created and remove the folder symfony that comes with the repo (here goes the project). After that, (within the symfony-dockerized folder) clone the repository project from https://github.com/naikok/symfony and you will see a new folder symfony created with all its files.

3) Wake up docker! You will see a file called "run.sh" within the symfony-dockerized folder. Execute the bash code for waking   up all docker containers and execute as root: sudo sh run.sh
  (Wake up all required containers to make it work)

4) Once is finished, get access to the symfony container php. In order to to do this:
   Execute sudo sh sudo docker exec -it symfonydockerized_php_1 /bin/bash
    
After that you will see a new bash shell under the path /var/www/symfony.

5) Run composer to install required dependencies with the command line: composer install

5) Once is finished , in that shell you must execute a command line to create doctrine database. 
   php bin/console doctrine:database:create
   
6) Execute doctrine migration in order to create the tables required as database system.

   php bin/console doctrine:migrations:migrate 20201227105444

7) Open a browser and go to http://127.0.0.1:8001 and you will be able to see the symfony app running!




