#!/bin/bash

sudo service docker start
cd /home/corso/make_docker_public

echo "Quale servizio vuoi far partire?:"
echo "1. python_lab"
echo "2. postgres"
read choice

if [ $choice -eq 1 ]; then
  service="python_lab"
elif [ $choice -eq 2 ]; then
  service="postgres"
else
  echo "Scelta non valida"
  exit 1
fi

make start service=$service

