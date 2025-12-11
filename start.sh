#!/bin/bash

mkdir -p data
cd data

echo "Downloading OSRM dataset..."
curl -L "https://drive.google.com/file/d/1dQw2mz6W3SWkkNd9h1Dzih0tOelEyKZm/view?usp=drive_link" -o osrm.zip

echo "Unzipping..."
unzip osrm.zip
rm osrm.zip

echo "Starting OSRM..."
osrm-routed --algorithm mld western-zone-251204.osrm -p 5000
