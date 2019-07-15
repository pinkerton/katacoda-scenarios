#!/bin/bash
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -;
sudo apt-get install -y nodejs;
mkdir /root/workshop;
touch /root/workshop/serverless.yml;
touch /root/workshop/create-image-upload-url.js;
