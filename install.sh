#!/bin/bash
echo "Setting-up ..."
cd /
mkdir aerospike
cd /aerospike

echo "Install Aerospike ..."

sudo apt-get update
sudo wget -O aerospike-server.tgz http://www.aerospike.com/download/server/latest/artifact/debian7
sudo tar -zxvf aerosopike-server.tgz
cd aerospike-server-community-*
sudo ./asinstall

echo "Install Aerospike Management Console (AMC) ..."
sudo wget -O aerospike-management-console.deb http://www.aerospike.com/download/amc/latest/artifact/debian6
sudo dpkg -i aerospike-management-console.deb
sudo apt-get -f install

echo "Starting Services ..."
sudo service aerospike start
sudo service amc start