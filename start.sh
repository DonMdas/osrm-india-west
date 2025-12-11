#!/bin/bash

echo "Downloading OSRM dataset..."
curl -L "https://drive.google.com/uc?export=download&id=1dQw2mz6W3SWkkNd9h1Dzih0tOelEyKZm" -o osrm.zip

echo "Unzipping OSRM dataset..."
unzip osrm.zip -d data
rm osrm.zip

echo "Starting OSRM..."
osrm-routed --algorithm mld data/western-zone-251204.osrm -p 5000
