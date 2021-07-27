# Docker setup

This is the setup repository for the [ExpressionDetection](https://gitlab.com/ExpressionDetection) project. It contains a `docker-compose.yml` file with the container orchestration of this system.

## Getting Started

* Install [Docker](https://docs.docker.com/install/)

* Run `./setup.sh`
    * This will setup [API](https://gitlab.com/ExpressionDetection/api)

## Post-setup links

* `http` -> `localhost:6969`: [grpcox](https://github.com/gusaul/grpcox)
* `gRPC` -> `localhost:50051`: [Model 1](https://gitlab.com/ExpressionDetection/model1)

## Useful commands

* `./run.sh $CONTAINER_NAME $COMMAND`: Running commands inside containers
* `./up.sh`: Build images and turn on containers
* `./down.sh`: Turn down containers
* `./build.sh`: This will build all Docker images for all apps
* `./log-apps.sh`: Logs all services
    * `./log-apps.sh $CONTAINER_NAME`: Logs one service

## Stopping services

* To stop services, either:
  * Run `./down.sh` to stop all services.
  * Run `docker-compose stop ${service_name}` to stop a specific service.