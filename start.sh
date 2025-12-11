#!/bin/bash

apt-get update
apt-get install -y osrm-backend unzip curl

mkdir -p data
cd data

# Download the OSRM dataset from Google Drive
curl -L "https://drive.google.com/file/d/1dQw2mz6W3SWkkNd9h1Dzih0tOelEyKZm/view?usp=sharing" -o osrm.zip

unzip osrm.zip
rm osrm.zip

osrm-routed --algorithm mld western-zone-251204.osrm -p 5000
