#!/bin/bash

sudo apt-get update
sudo apt-get install ansible
sudo apt-get install python-pip

sudo curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.9.0/bin/linux/amd64/kubectl
sudo chmod +x kubectl
sudo mv kubectl /usr/local/bin/
sudo apt-get install git 


sudo git clone https://github.com/jatinbajaj1/spinnaker_ansible.git

cd spinnaker_ansible

sudo ansible-playbook -i defaults/inventory  tasks/main.yml  -vvv
