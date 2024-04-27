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
```
