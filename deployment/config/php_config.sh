#!/bin/sh

# Check if our secrets are present
test -f /run/secrets/db_username && read -r DB_USERNAME < /run/secrets/db_username
test -f /run/secrets/db_password && read -r DB_PASSWORD < /run/secrets/db_password

# PHP will inherit the parent env, including DB_USERNAME
exec php-fpm
