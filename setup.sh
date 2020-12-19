#!/bin/bash
echo "Starting Setup..."

echo "Installing dependencies..."
sudo apt-get update && sudo apt-get install -y libffi-dev libssl-dev python3 python3-pip && sudo apt-get remove python-configparser

echo "Installing Docker..."
curl -sSL https://get.docker.com | sh

echo "Installing Docker Compose..."
sudo pip3 -v install docker-compose 

echo "Creating .env file ..."
cp .env.template .env

echo "Adding pi user to run docker commands"
sudo usermod -aG docker pi 

echo "Setup complete. You need to restart your device to apply docker permission group changes"