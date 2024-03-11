bash
     #!/bin/bash

     UNITY_VERSION=$1
     COMPONENTS=$2
	 

     # Download and install Unity
     #curl -o Unity.tar.xz https://download.unity3d.com/download_unity/f18e0c1b5784/LinuxEditorInstaller/Unity.tar.xz
	 # Confirm the existence of the downloaded file
	 #ls -l Unity.tar.xz
	 
     # Распаковать архив
	 #tar -xvf Unity.tar.xz &

	 # Дождаться завершения распаковки
	 #wait
	 
     # Make UnitySetup.sh executable
	 #chmod +x UnitySetup.sh
	 
     "${GITHUB_WORKSPACE}/Editor/Unity" --unattended --install-location=$HOME --components=${COMPONENTS}