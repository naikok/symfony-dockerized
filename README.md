Requirements:

For this project I have decided to use symfony 5 framework under php 7.2 + nginx + mysql

Installation:

Make sure you have docker installed at your computer

1) First of all, clone this repository from https://github.com/naikok/symfony-dockerized.git

2) Once is done, get into the symfony-dockerized folder that has been already created and remove the folder "symfony" that comes with the repo (here goes the project where we have built the app). After that, (within the symfony-dockerized folder) clone the repository project from https://github.com/naikok/symfonytest and you will see a new folder symfonytest created with all its files.

3) Wake up docker! You will see a file called "run.sh" within the symfony-dockerized folder. Execute the bash code for waking   up all docker containers and execute as root: sudo sh run.sh
  (Wake up all required containers to make it work)

4) Once is finished, get access to the symfony container php. In order to to do this:
   Execute sudo sh accesscontainer.sh 
    
After that you will see a new shell bash under the path /var/www/symfony. You are working within the container.

5) Run composer to install required dependencies in this new shell: composer install

6) Once is installed configure tyour database, edit file .env (located at /var/www/symfony/.env ) and change DATABASE_URL as it follows:

  DATABASE_URL=mysql://root:root@database:3306/symfony_test?serverVersion=5.7

7) Once is finished , in that shell you must execute a command line to create database.

   php bin/console doctrine:database:create (if already exists, just get rid of this step).
   
8) Execute doctrine migration in order to create the tables required as database system.

   php bin/console doctrine:migrations:migrate 20200514202426
    
9) Load activities as examples to fill the mysql database with random activities.

    php bin/console doctrine:fixtures:load 

10) Open a browser and go to http://127.0.0.1:8001 and you will be able to see the symfony app running!




