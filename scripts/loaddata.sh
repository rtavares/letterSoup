#!/bin/sh

# Shell script to load initial data to Django Project

# Set current directory to script directory
cd "$(dirname "$0")"
. ../.env

echo "Loading initial data to Django Project $PROJECT_NAME"
docker-compose --project-directory .. up -d "$PROJECT_NAME"
docker-compose --project-directory .. run "$PROJECT_NAME" python3 "$DJANGO_PROJECT_NAME"/manage.py loaddata djangoblueprint_sampledata.json

