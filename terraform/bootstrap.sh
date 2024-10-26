#!/bin/bash
component=$1
env_type=$2 #dont use env here, it is reserved in linux
app_version=$3
# yum install python3.11-devel python3.11-pip -y
# pip3.11 install ansible botocore boto3
yum install ansible -y
ansible-pull -U https://github.com/devopsncloud/roboshop-ansible-roles-tf.git -e component=$component -e environment=$env_type -e app_version=$app_version main-tf.yml