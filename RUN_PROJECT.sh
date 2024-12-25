#!/bin/bash

cd PiratesBackend

echo "Starting backend services with docker-compose..."
docker-compose up -d

cd ../piratesfront

echo "Building Docker image for frontend..."
docker build -t pirates-frontend .

echo "Starting frontend container..."
docker run -d --name pirates-frontend-container -p 80:80 pirates-frontend

echo "Containers running:"
docker ps
