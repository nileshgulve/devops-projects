#!/bin/bash

# Update and install Docker
#sudo apt-get update
#sudo apt-get install -y docker.io

# Build the Docker image
sudo docker build -t flask-crud-api .

# Run the Docker container
sudo docker run -d -p 5000:5000 flask-crud-api

# Check if the container is running
sudo docker ps

