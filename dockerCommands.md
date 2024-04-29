https://docs.docker.com/get-started/docker_cheatsheet.pdf

```sh
## Version of Docker
$ docker --version

## Versions of Client/Server dependencies which Docker use
$ docker version

## Info about docker
$ docker info

## Info about commands and parameters
$ docker --help

## Info about build
$ docker build --help

## Info about pull
$ docker pull --help

## Info about run
$ docker run --help

## Search for built-in images
$ docker search <image name>

## Execute dockerfile and create Image with no name.
$ docker build .

## Execute dockerfile and create Image with name. Name must be lowercase
$ docker build . --tag <image name>
$ docker build . --t <image name>
$ docker build . --t <image name>:<version>

## Copy image with different name
$ docker --tag <image name> <new image name>

## List images
$ docker image ls
$ docker images

## Remove image
$ docker rmi <image name>
$ docker rmi <image name>:<version>

## Force to remove image
$ docker rmi -f <image name>
$ docker rmi -f <image name>:<version>

## Remove all dangling images
## "dangling image" refers to an image that has no associated containers
$ docker image prune
$ docker image prune -f
$ docker image prune -f -a

## Create container from image
$ docker run <image name>:<version>
$ docker run --name <container name> <image name>:<version>
$ docker run -d --name <container name> -p <container port>:<outer request port> <image name>:<version>

## Create container and start the integrated terminal in it
$ docker run -it <image name> sh

## Exit integrated terminal
$ exit

## List containers
$ docker container ls
$ docker container ls -a
$ docker ps -a

## Remove container
$ docker rm <container name>
$ docker rm <container name> -f

## Remove all inactive container
$ docker container prune
$ docker container prune -f
$ docker container prune -f -a


## Activate container
$ docker start <container name>

## Deactivate container
$ docker stop <container name>

## Login to docker hub in CLI
$ docker login
$ docker login -u <username> -p <password>

## Push container image to docker hub
$ docker push <usename>/<imagename>

## Pull container image from docker hub
$ docker pull <usename>/<imagename>

## Clear everything on docker system
$ docker system prune -f -a

##
##
## Compose means the container that contains two apps like having frontend and backend in same container.
## optional
# version: 'version'
services:
  frontend:
    image: "docker-image-frontend"
    build: ./frontend
    ports:
      - <container port>:<outer request port>
      - <container port>:<outer request port>
    restart: on-failure
    depends_on:
      - backend

  backend:
    image: "docker-compose-backend"
    build: ./backend
    ports:
      - <container port>:<outer request port>
    restart: on-failure
    volumes: # Add to not loose these data, size always changes
      - $PWD/backend/logs:/backend/logs
      - $PWD/backend/upload:/backend/upload
##
##

## To create images and containers and run with one command
$ docker compose up -d --build
$ docker compose down
```
