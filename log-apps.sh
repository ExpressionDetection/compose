#!/bin/bash
CONTAINER_NAME=$1

docker-compose -f docker-compose.yml logs -f --tail 100 $CONTAINER_NAME