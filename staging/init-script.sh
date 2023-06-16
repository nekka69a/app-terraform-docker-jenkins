#!/bin/bash

#Installing Docker
sudo apt update&&sudo apt upgrade -y
curl -fsSL https://get.docker.com/ -o install-docker.sh
sh install-docker.sh --dry-run
sudo sh install-docker.sh

#Buildind image
#!/bin/bash

#Installing Docker
sudo apt update&&sudo apt upgrade -y
curl -fsSL https://get.docker.com/ -o install-docker.sh
sh install-docker.sh --dry-run
sudo sh install-docker.sh

#Buildind image
sudo git clone https://github.com/nekka69a/app-terraform-docker-jenkins.git
sudo docker build -t brief14:latest .

#Creating container
sudo docker run --name brief14 -p 1234:1234 -d brief14:latest

#Tag image and Push
sudo docker tag brief14:latest aminanekka/brief14:latest
sudo docker login -u aminanekka -p dckr_pat_6-DR8BxmxW9noZ2a_MgCwzEIsZo
sudo docker push aminanekka/brief14:latest
sudo docker build -t brief14:latest .

#Creating container
sudo docker run --name brief14 -p 1234:1234 -d brief14:latest

#Tag image and Push
sudo docker tag brief14:latest aminanekka/brief14:latest
sudo docker login -u aminanekka -p dckr_pat_6-DR8BxmxW9noZ2a_MgCwzEIsZo
sudo docker push aminanekka/brief14:latest
