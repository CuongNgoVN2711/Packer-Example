#!/bin/bash

sudo yum update

sudo yum install -y docker

sudo usermod -a -G docker ec2-user

sudo systemctl enable docker

echo '{"log-driver": "json-file", "log-opts": {"max-size": "50m","max-file": "5"}}' | sudo tee /etc/docker/daemon.json