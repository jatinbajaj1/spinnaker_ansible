#!/bin/bash

sudo apt-get update
sudo apt-get install ansible
sudo apt-get install python-pip

sudo apt-get install git 

sudo git clone https://github.com/jatinbajaj1/spinnaker_ansible.git

cd spinnaker_ansible

sudo ansible-playbook -i defaults/inventory  tasks/main.yml  -vvv
