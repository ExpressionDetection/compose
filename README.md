# Docker setup

This is the setup repository for the [ExpressionDetection](https://github.com/ExpressionDetection) project. It contains a `docker-compose.yml` file with the container orchestration of this system.

## Getting Started

* Install [Docker](https://docs.docker.com/install/)

* Run `./setup.sh new` and enjoy!
  * After the setup is complete check services logs by doing `./log-apps.sh`

## Post-setup services

| Service Name                                                                 | Description                | Protocol           | URL                      |
| -----------                                                                  | -----------                | -----------        | -----------              |
| [grpcox](https://github.com/gusaul/grpcox)                                   | RPC explorer GUI           | `http`             | `localhost:6969`         |
| [model1](https://github.com/ExpressionDetection/model1)                      | Model 1 RPC service        | `gRPC / http2`     | `localhost:50051`        |
| [grpc-pkg](https://github.com/ExpressionDetection/grpcPkg)                   | RPC `protobufs` store      | N/A                | N/A                      |
| [chrome-extension](https://github.com/ExpressionDetection/chrome-extension)  | Video call chrome extesion | `http`             | `localhost:3000`         |

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