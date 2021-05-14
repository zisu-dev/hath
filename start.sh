#!/bin/sh

if [ ! -f /hath/data/data/client_login ]; then
  if [ $CLIENT_ID ] && [ $CLIENT_KEY ]; then
    mkdir -p /hath/data/data
    mkdir -p /hath/download
    echo -n "${CLIENT_ID}-${CLIENT_KEY}" > /hath/data/data/client_login
  else
    echo "Login not found, try specify CLIENT_ID and CLIENT_KEY."
    exit 1
  fi
fi


java -jar HentaiAtHome.jar --cache-dir=/hath/data/cache --data-dir=/hath/data/data --download-dir=/hath/download --log-dir=/hath/data/log --temp-dir=/hath/data/temp
