#!/bin/bash

# Update package lists
sudo apt-get update

# Install necessary components for .NET
sudo apt-get install -y apt-transport-https

# Add Microsoft package signing key to your list of trusted keys and add package repository
wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb

# Install .NET SDK
sudo apt-get update
sudo apt-get install -y dotnet-sdk-3.1

# Install IQ#
dotnet tool install -g Microsoft.Quantum.IQSharp
dotnet iqsharp install
