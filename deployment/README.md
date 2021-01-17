# Deployment Guide


## Setup

> So easy, a halfwit could do it

### Get The Sauce

As follows: 

```/bin/sh
git clone https://github.com/wetfish/sysadmin
cd sysadmin/deployment

# Modify your .env file, using a strong password 
vi .env
```

### Deployment

Our docker-compose.yml file is set up to create all the requisite networks, containers, and volumes for deployment. It's as trivial as running the following

```/bin/sh

# Deploy our default swarm
docker-compose up

```

### Grant Database Permissions

(From a separate shell) log in to your mariadb instance

```/bin/sh

# Find the name of your database container
docker ps 

# it will likely look like somename_db, for example deployment_db_1 on my system. Use this name to log in to the database.
docker exec -it <name of your db container> bash

# Then, from within the container
mysql -u root -p # It will prompt for the password you created in .env

# While in the mysql cli program, substitute in your username and password in these commands to allow your php containers access to the database
>GRANT ALL PRIVILEGES ON *.* to '<myuser>'@'%' IDENTIFIED BY '<mypassword>';
>FLUSH PRIVILEGES;
```
