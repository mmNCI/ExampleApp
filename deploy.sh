#!/usr/bin/env bash
sudo apt update && sudo apt install nodejs npm
# Install pm2 whoch is a production manager for Node.js with a built-in load balancer.
sudo npm install -g pm2
# stop any instance of our application running currently 
pm2 stop example_app
# change directory into folder where application is downloaded
cd ExampleApplication/ 
# Install application dependencies
npm install
# start the application with the process name ExampleApp using pm2
pm2 start ./bin/www --name ExampleApp