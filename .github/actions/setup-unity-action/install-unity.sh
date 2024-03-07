bash
     #!/bin/bash

     UNITY_VERSION=$1
     COMPONENTS=$2
	 

     # Download and install Unity
     curl -o Unity.tar.xz https://download.unity3d.com/download_unity/f18e0c1b5784/LinuxEditorInstaller/Unity.tar.xz
	 # Confirm the existence of the downloaded file
	 ls -l Unity.tar.xz
	 
     # Extract Unity tarball
	 tar -xzf Unity.tar.xz
	 
     # Make UnitySetup.sh executable
	 chmod +x UnitySetup.sh
     ./Unity.tar.xz --unattended --install-location=/opt/unity --components=${COMPONENTS}
	 
	 # Cleanup
	 rm -rf Unity.tar.xz UnitySetup.sh