#!/bin/bash

# This script creates a container with a bind volume

# Creates the container
docker container run -it -d --name alpine -v `pwd`:/workspace alpine sh

# Lists the content of /workspace folder
echo "Listing the content on /workspace"
docker container exec alpine ls /workspace

# Wait
sleep 2

# Stop the container
docker container stop alpine

# Remove the container
docker container rm alpine

# Remove the image
docker image rm alpine
