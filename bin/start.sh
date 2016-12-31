#!/bin/sh

if [ "$1" = "shell" ]; then
/bin/bash
exit 0
fi

if [ ! -d "/app/log" ]; then
mkdir /app/log
fi
if [ ! -d "/app/log/nginx" ]; then
mkdir /app/log/nginx
fi


if [ ! -d "/app/wwwroot" ]; then
mkdir /app/wwwroot
echo "ok" > /app/wwwroot/index.html
fi

/usr/sbin/nginx -g 'daemon off; master_process on;'
