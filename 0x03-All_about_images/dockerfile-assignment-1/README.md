# Assignment

These are the steps required for this assignment

Building the image

    docker image build -t node-6alpine .

Creating the container

    docker container run --name node-alpine -p 80:3000 -d node-6alpine

Renaming the image

    docker image tag node-6alpine oimoralest/node-alpine

Login to docker hub

    docker login

Pushing the image

    docker push oimoralest/node-alpine

Logout from docker hub

    docker logout

Deleting the images

    docker image rm oimoralest/node-alpine node-6alpine

Cretaing the container

    docker container run --name node-alpine -p 80:3000 -d oimoralest/node-alpine
