# Deployment Guide

> So easy, a halfwit could do it

__*In the event you change anything on the production server, please update this git repository to match. Exceptions are `data/`, and `.env`*__

## Install Docker

Our docker version (`docker -v`) is *`version 20.10.2+dfsg1, build 2291f61`*

Some useful resources for getting docker installed on your machine

https://docs.docker.com/engine/install/debian/

1. On the current deployment, we had to add a repository for libsseccomp2 as well, prior to the `apt-get install docker-ce` step in the above link.

```
add-apt-repository "deb http://ftp.de.debian.org/debian sid main"
apt-get update
apt-get install libseccomp2
```

2. We use `docker-compose` in our deployment.

```
apt-get install docker-compose
```

3. Finally, enable the service

```
systemctl start docker
```

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

# Deploy everything
docker-compose up 

```

### Grant Database Permissions

(From a separate shell) log in to your mariadb instance

```/bin/sh

# Log in to the database container
# From the sysadmin/deployment directory: 
docker-compose exec db bash

# Then, from within the container start up a mysql cli as root, using the password you supplied in the .env file
mysql -u root -p 

# Substitute in your username and password in these commands to allow your php containers access to the database
>GRANT ALL PRIVILEGES ON *.* to '<myuser>'@'%' IDENTIFIED BY '<mypassword>';
>FLUSH PRIVILEGES;
>exit

# Next, we want to pull the (unfortunately latin1 encoded) wiki data, and convert it to utf8
mysql -u fishy -p wiki --default-charset=utf8 < /dumps/wiki_data.sql

# Exit your session on the database container
exit

```

### Maintenance

__*This living document will be updated periodically to reflect requisite maintenance*__

#### Data

All data for the various sites that we want to persist, lives in `data/`. It's further broken out into dbdata, which is the database files themselves; and then per-site directories for data. For example,  `data/blog/upload` contains the photos used for the main wetfish website.

This configuration allows us to simply zip the entire `data` directory for our backup scheme, and should be eventually automated.

Additionally in data is the config.js file from the main blog. This is union mounted into the image so it may be updated and changes made will be immediately reflected in the production environment.

#### Dumps
 
The `dumps/` directory contains sql files for initialization of databases at the time of migration to the new servers, and is not considerably useful once we're up and running.

The wiki\_data.sql file was created as follows from the old production database:
`mysqldump -u user -p --no-create-db --no-create-info --skip-set-charset --default-character-set=latin1 wiki > wiki_data.sql`

And the wiki\_schema.sql data was created with:
`mysqldump -u -user -p wiki --no-data --skip-set-charset --default-character-set=latin1 | sed 's/CHARSET=latin1/CHARSET=utf8/g' > wiki\_schema.sql`

*these steps are adapted from https://www.whitesmith.co/blog/latin1-to-utf8/ *

#### Updating blog

Changes done to blog will not update live, as node loads the config.js file on startup. To have the changes propagate, simply restart the service

```
docker-compose restart blog
```
