#!/bin/sh

# Shell script to start a simple HTML Client Server to consume the Django Project endpoints.
cd "$(dirname "$0")"
. .env

echo "Starting HTML Client on Port $CLIENT_PORT"

docker-compose up --build -d



