#!/bin/bash

project="ExpressionDetection"
gitProvider="github.com"
repositories="inference-api grcp-pkg model1 chrome-extension"

SETUP_TYPE=$1

echo ">>> Setup started!"

echo ">>> Cloning repositories"
for repository in $repositories; do
    if [ "$SETUP_TYPE" == "new" ]; then
        rm -rf ../${repository}
    fi
    if [ ! -d "../${repository}" ]; then
        git clone "git@$gitProvider:$project/$repository.git" "../$repository"
    else
        echo ">>> ../${repository} already cloned"
        # This is necessary because Vagrant creates a directory inside the VM during `vagrant up --provision`
        if [ "$SETUP_TYPE" == "new" ] &&  [ "${repository}" == "chrome-extension" ]; then
            cd ../${repository} && git init && git remote add origin "git@$gitProvider:$project/$repository.git" && git pull origin master && cd ../compose
        fi

    fi
done

echo ">>> Destroying existent containers"
./down.sh remove

echo ">>> Creating application containers"
./build.sh
./up.sh

echo ">>> Setup complete!"