#!/bin/bash

# Build and run the CTF challenge server
echo "Building Docker image..."
docker-compose build

echo "Starting CTF challenge server..."
docker-compose up -d

echo "CTF challenge server is running on http://localhost:83"
