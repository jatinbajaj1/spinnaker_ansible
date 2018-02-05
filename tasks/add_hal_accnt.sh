#!/bin/bash 




#hal config provider docker-registry account add my-docker-account-2 --address https://index.docker.io/ --repositories jabajaj/kubectl --username jabajaj --password
hal config provider docker-registry account add my-docker-account-1 --address https://index.docker.io/ --repositories $2 --username $3 --password
