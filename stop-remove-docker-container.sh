#!/bin/bash

# Check if a docker container ID is provided
if [ -z "$1" ]; then
    # Prompt for a name if not provided ask for one.
    docker ps -a
    read -p "Please enter a docker container ID: " dockerID
else
    # Use the provided name
    dockerId="$1"
fi

echo "Stopping docker container: $dockerID"
docker stop "$dockerID"

echo "Removing docker container: $dockerID"
docker remove "$dockerID"
docker ps -a
