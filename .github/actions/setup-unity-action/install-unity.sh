bash
     #!/bin/bash

     UNITY_VERSION=$1
     COMPONENTS=$2

     # Download and install Unity
     curl -o UnitySetup.sh https://download.unity3d.com/download_unity/f18e0c1b5784/LinuxEditorInstaller/Unity.tar.xz
     tar -xzf Unity.tar.xz
     chmod +x UnitySetup.sh
     ./UnitySetup.sh --unattended --install-location=/opt/unity --components=${COMPONENTS}