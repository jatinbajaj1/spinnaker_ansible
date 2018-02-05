#!/bin/bash

sudo apt-get update
sudo apt-get install ansible
sudo apt-get install python-pip

sudo ansible-playbook -i defaults/inventory  tasks/main.yml  -vvv
