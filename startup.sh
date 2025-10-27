#!/bin/bash
# ==============================================
# UberApp setup script for Ubuntu on Azure VM
# ==============================================

set -e

echo "🔹 Updating system..."
sudo apt update -y

echo "🔹 Installing Docker..."
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh

echo "🔹 Pulling Docker image..."
sudo docker pull maximoleshkoschool/uberdata:v1.0

echo "🔹 Running container on port 5000..."
sudo docker run -d -p 5000:5000 maximoleshkoschool/uberdata:v1.0

echo "✅ Setup complete!"
echo "🌐 Access the app at: http://<your-public-ip>:5000"
