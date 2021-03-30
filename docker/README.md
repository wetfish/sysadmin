# Docker base images

## php5.6-fpm-nginx-alpine Docker image

This docker image contains a working php-fpm with nginx, running on Alpine linux with s6 managing the services. 

By default, it listens on port 8080

It can be used as normal, 

`docker run -it fishnet/php5.6-fpm-nginx-alpine bash`

Or as a base image

```Dockerfile
FROM fishnet/php5.6-fpm-nginx-alpine

RUN apk add --no-cache \
	nodejs \
	npm 

RUN mkdir -p /var/www/src/node_modules \
	&& npm install --prefix /var/www/src

CMD ["npm", "dev"]
```

Do not override the entrypoint if using this as a base image!
## Usage 

### Static Files Via Nginx

Files can be added to /etc/nginx/location.d/ in the following format:

```
location /foo {
	stuff...;
}

location /bar {
	stuff...;
}
```

### Logging

Create the directory /usr/local/var/log and make sure it is write-accessible to your user

### Env Variables

DISPLAY\_ERRORS (Yes/No)
- Show/hide php errors on webpage 

HTTP\_PORT (Default 8080)
- Listen on a different port

## Building

Where [yourversion] is, for example `php5.6-fpm-nginx-alpine` from the sysadmin/docker directory run:

```
docker build -t fishnet/[yourversion] -f [yourversion]/Dockerfile .
```
