#!/bin/sh

export DB_USERNAME="$(cat /run/secrets/db_username)"
export DB_PASSWORD="$(cat /run/secrets/db_password)"
export DB_HOST=db

# PHP will inherit the parent env, including DB_USERNAME
php-fpm
