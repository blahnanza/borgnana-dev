#!/bin/sh
sudo apt-get install -y build-essential
sudo apt-get install -y libffi-dev
#sudo apt-get install -y ansible
sudo apt-get install -y python-pip python-dev
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get update
sudo apt-get install -y ansible
