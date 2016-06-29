#!/bin/bash
sudo DEBIAN_FRONTEND=noninteractive apt-get update
sudo DEBIAN_FRONTEND=noninteractive apt-get install -y build-essential
sudo DEBIAN_FRONTEND=noninteractive apt-get install -y libffi-dev
sudo DEBIAN_FRONTEND=noninteractive apt-get install -y python-pip python-dev
sudo DEBIAN_FRONTEND=noninteractive apt-get install -y software-properties-common

sudo DEBIAN_FRONTEND=noninteractive apt-add-repository -y ppa:ansible/ansible 2>&1
sudo DEBIAN_FRONTEND=noninteractive apt-get update
sudo DEBIAN_FRONTEND=noninteractive apt-get install -y ansible
