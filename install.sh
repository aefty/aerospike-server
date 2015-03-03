#!/bin/bash
echo "Setting-up ..."
cd /
mkdir aerospike
cd /aerospike

echo "Install Aerospike ..."

sudo su -
apt-get update
wget -O aerospike-server.tgz http://www.aerospike.com/download/server/latest/artifact/debian7
tar -zxvf aerosopike-server.tgz
cd aerospike-server-community-*
./asinstall

echo "Install Aerospike Management Console (AMC) ..."
wget -O aerospike-management-console.deb http://www.aerospike.com/download/amc/latest/artifact/debian6
dpkg -i aerospike-management-console.deb
apt-get -f install

echo "Starting Services ..."
service aerospike start
service amc start