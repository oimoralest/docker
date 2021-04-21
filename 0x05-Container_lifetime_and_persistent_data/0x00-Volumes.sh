#!/bin/bash

# This script creates a container with a volume defined with -v option

# Download mysql image
docker pull mysql:latest

# Creates a container with -v option
docker container run -d --name mysql -e MYSQL_ALLOW_EMPTY_PASSWORD=True -v mysql-db:/var/lib/mysql mysql:latest

# Lists created volumes
docker volume ls

# Waiting
sleep 2

# Stops the container
docker container stop mysql

# Remove the container
docker container rm mysql

# Remove the volume
docker volume rm mysql-db

#Remove the image
docker image rm mysql:latest