#!/bin/bash

# Check if Unity installer exists
if [ ! -f "Unity.tar.xz" ]; then
    echo "Unity installer not found. Aborting installation."
    exit 1
fi

# Extract Unity installer
tar -xzf Unity.tar.xz || { echo "Failed to extract Unity installer."; exit 1; }

# Run Unity installer with specified components and options
./UnitySetup.sh --unattended --install-location=/opt/unity --components=$COMPONENTS || { echo "Failed to install Unity."; exit 1; }

# Cleanup
rm -rf Unity.tar.xz UnitySetup.sh
