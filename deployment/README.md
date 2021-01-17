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

# Log in to the database container
docker-compose exec db bash

# Then, from within the container start up a mysql cli as root, using the password you supplied in the .env file
mysql -u root -p 

# Substitute in your username and password in these commands to allow your php containers access to the database
>GRANT ALL PRIVILEGES ON *.* to '<myuser>'@'%' IDENTIFIED BY '<mypassword>';
>FLUSH PRIVILEGES;
>exit

# Exit your session on the database container
exit
```

### Maintenance


