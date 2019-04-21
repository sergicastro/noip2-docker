#! /bin/sh
set -e

user=$1
pass=$2

if [ ! -d "/config" ]; then
    echo "Missing /config volume";
    exit 5
fi

if [ ! -f "/config/no-ip2.conf" ]; then
    expect /configure.sh $user $pass
    mv /tmp/no-ip2.conf /config/no-ip2.conf
fi

# Run service
noip2 -c /config/no-ip2.conf

while true; do sleep 1; done
