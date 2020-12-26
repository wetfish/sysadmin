# Deployment Guide


## Setup

> So easy, a halfwit could do it

### Get The Sauce

As follows: 

```/bin/sh
git clone https://github.com/wetfish/sysadmin
cd sysadmin/deployment

# Modify your .env file if you are not working on wetfish.net
#vi .env
```

### Create Our Initial Node

We run `docker swarm init --advertise-addr <internal IP>`, which will have tab complete. We want this on the same, ideally internal network as the rest of our nodes, so we can add subsequent worker nodes with ease.

*Take note of the token generated, this is used to add nodes to the swarm later*

### Secrets

We set our db password/username in docker secrets files


 - db\_password
 - db\_username

```/bin/sh

echo mysecretpassword | docker secret create db_password -
echo myusername | docker secret create db_username -
```

This way, we don't leak our db credentials, should our docker host server be compromised.

### Deployment

Our docker-compose.yml file is set up to create all the requisite networks, images, and put our secrets into the correct area for our final docker images. It's as trivial as running the following

```/bin/sh

# Deploy our default swarm
docker stack deploy --compose-file docker-compose.yml default

```

### Verify, Maintain, Etc

```/bin/sh

# This will show the status of the swarm, make sure all the required nodes are up and there are no errors
docker stack service default 
```
