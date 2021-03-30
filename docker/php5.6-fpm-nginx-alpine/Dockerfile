FROM php:5.6-fpm-alpine

WORKDIR /var/www

RUN apk add --no-cache \
	bash \
	curl \
	nginx \
	&& curl -o /tmp/s6-overlay-amd64.tar.gz -jkSL https://github.com/just-containers/s6-overlay/releases/download/v2.2.0.1/s6-overlay-amd64.tar.gz \
	&& tar xvfz /tmp/s6-overlay-amd64.tar.gz -C / \
	&& apk del --no-cache --purge \
		curl \
	&& rm -rf /tmp/* \
	&& mkdir -p /run/nginx /etc/nginx/locations.d

COPY ./rootfs/ /

# Make sure we have a viable port
ENV HTTP_PORT=8080
EXPOSE $HTTP_PORT 

ENTRYPOINT [ "/init" ]
