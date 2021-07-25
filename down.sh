#!/bin/bash

OPTION=$1

if [ "$OPTION" == "remove" ]
then
    docker-compose -f docker-compose.yml down --rmi all --remove-orphans
else
    docker-compose -f docker-compose.yml down --remove-orphans
fi
