# Deployment Guide


## Setup

> So easy, a halfwit could do it

### Get The Sauce

As follows: 

```/bin/sh
git clone https://github.com/wetfish/sysadmin
cd sysadmin/deployment

# Modify your .env file, using a strong password 
#vi .env
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

docker exec -it deployment_db_1 bash # This may be different, use tab complete to find the correct one

# Then, from within the container
mysql -u root -p # It will prompt for the password you created in .env

>GRANT ALL PRIVILEGES ON *.* to '<myuser>'@'%' IDENTIFIED BY '<mypassword>';
>FLUSH PRIVILEGES;
```
