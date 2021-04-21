#!/bin/bash

# This script updates the database version using containers
VOLUME=/var/lib/postgresql/data

# Creating container from postgres 9.6.1
docker container run -d --name psql-9.6.1 -v psql-db:$VOLUME postgres:9.6.1

# Checking for volume
docker volume ls

# Migrating to postgres 9.6.2
docker container run -d --name psql-9.6.2 -v psql-db:$VOLUME postgres:9.6.2

# Removing the containers
docker container stop psql-9.6.1 psql-9.6.2
docker container rm psql-9.6.1 psql-9.6.2

# Deleting database
docker volume rm psql-db
