#!/usr/bin/env bash

cd "$(dirname "$0")"
. ../.env
echo "Restart $PROJECT_NAME "
if [ "$1" = "build" ]
then
  docker-compose --project-directory .. build $PROJECT_NAME
else
  echo "Use [build] argument to also rebuild the project"
fi
docker-compose --project-directory .. stop $PROJECT_NAME
docker-compose --project-directory .. up -d $PROJECT_NAME