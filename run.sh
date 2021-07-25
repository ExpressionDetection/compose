#!/bin/bash

CONTAINER_NAME=$1
COMMAND=$2
INTERACTIVE=${3:-"true"}

# Check if docker is running
if [ $(docker ps | grep $CONTAINER_NAME | wc -l) -gt 0 ];
then
    if [ "$INTERACTIVE" == "true" ]
    then
        docker exec -it $CONTAINER_NAME bash -c "$COMMAND"
    else
        docker exec -t $CONTAINER_NAME bash -c "$COMMAND"
    fi
fi