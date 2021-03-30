#!/usr/bin/with-contenv bash

DISPLAY_ERRORS=${DISPLAY_ERRORS:-On}
HTTP_PORT=${HTTP_PORT:-8080}

echo "[config] Setting display_errors for php to $DISPLAY_ERRORS"
sed -i "s/@DISPLAY_ERRORS@/$DISPLAY_ERRORS/g" /usr/local/etc/php/conf.d/settings.ini

echo "[config] Setting default listening port to $HTTP_PORT"
sed -i "s/@HTTP_PORT@/$HTTP_PORT/g" /etc/nginx/conf.d/default.conf
