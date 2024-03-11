#!/bin/bash

# Function to find the Unity executable
find_unity_executable() {
    # List common directories where Unity might be installed
    unity_executable=$(find /opt/unity -type f -executable -name 'Unity' -print -quit)
    if [ -z "$unity_executable" ]; then
        unity_executable=$(find /usr/bin -type f -executable -name 'Unity' -print -quit)
    fi
    # Add additional directories as needed

    echo "$unity_executable"
}

# Main entry point
main() {
    # Find Unity executable
    unity_path=$(find_unity_executable)

    if [ -n "$unity_path" ]; then
        echo "Unity executable found at: $unity_path"

        # Run Unity commands here, if needed
        echo "Running Unity commands..."
        # Example: Run Unity in batch mode
        "$unity_path" -batchmode -logFile build.log -projectPath "WebGL test" -executeMethod Builder.BuildWindowsStandalone

        echo "Unity commands executed successfully."
    else
        echo "Error: Unity executable not found."
        exit 1
    fi
}

# Run the main function
main