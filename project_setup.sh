#!/bin/bash

echo "=====Creating project structure====="

mkdir -p project/{src,bin,logs,docs,config}

touch project/src/main.sh
touch project/docs/readme.txt
touch project/config/app.conf

echo "echo Hello, Project!" > project/src/main.sh

echo "Project directory structure created successfully!"

