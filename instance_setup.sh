#!/usr/bin/env bash

yum update -y
amazon-linux-extras install docker
yum install docker
service docker start
usermod -a -G docker ec2-user

docker run -d --name http-echo -p 8080:8080 connerjh/http-echo
