#!/bin/bash

# Install dependencies
sudo apt-get update
sudo apt-get install -y wget unzip

# Download Getscreen workflow
wget -O workflow.zip https://github.com/Dionid/teleadmin/archive/refs/heads/main.zip

# Extract workflow
unzip workflow.zip

# Move to workflow directory
cd teleadmin-main

# Start Getscreen workflow
./run.sh

# Wait for workflow completion
sleep 180

# Display connection details
echo "RDP IP Address: ${IP_ADDRESS}"
echo "RDP Port: ${PORT_NUMBER}"
echo "RDP Username: ${USERNAME}"
echo "RDP Password: ${PASSWORD}"
