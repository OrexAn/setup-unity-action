#!/bin/bash

# Set absolute paths for files
UNITY_TAR="Unity.tar.xz"
UNITY_SETUP="UnitySetup.sh"

# Check if Unity installer exists
if [ ! -f "$UNITY_TAR" ]; then
    echo "Unity installer not found. Aborting installation."
    exit 1
fi

# Extract Unity installer
tar -xzf "$UNITY_TAR" || { echo "Failed to extract Unity installer."; exit 1; }

# Run Unity installer with specified components and options
./"$UNITY_SETUP" --unattended --install-location=/opt/unity --components=$COMPONENTS || { echo "Failed to install Unity."; exit 1; }

# Cleanup
rm -rf "$UNITY_TAR" "$UNITY_SETUP"
