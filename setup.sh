#!/bin/bash
echo "Starting Setup..."
echo "Installing Docker..."
curl -sSL https://get.docker.com | sh

echo "Installing Docker Compose..."
pip install docker-compose

echo "Creating .env file ..."
cp .env.template .env