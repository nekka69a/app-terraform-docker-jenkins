#!/bin/bash

#Installing Docker
sudo apt update&&sudo apt upgrade -y
curl -fsSL https://get.docker.com/ -o install-docker.sh
sh install-docker.sh --dry-run
sudo sh install-docker.sh

#Creating container
docker run --name nginxamina2 -p 80:80 -d  aminanekka/nginxamina
