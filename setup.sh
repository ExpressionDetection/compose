#!/bin/bash

project="ExpressionDetection"
gitProvider="github.com"
repositories="api grcpPkg model1"
apps="api"

echo ">>> Setup started!"

echo ">>> Cloning repositories"
for repository in $repositories; do
    if [ ! -d "../${repository}" ]; then
        git clone "git@$gitProvider:$project/$repository.git" "../$repository"
    else
        echo ">>> ../${repository} already cloned"
    fi
done

echo ">>> Destroying existent containers"
./down.sh remove

echo ">>> Creating application containers"
./build.sh
./up.sh

echo ">>> Setup complete!"