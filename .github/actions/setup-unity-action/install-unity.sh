bash
     #!/bin/bash

     UNITY_VERSION=$1
     COMPONENTS=$2
	 DOWNLOAD_DIR="${{ github.workspace }}"

     # Download and install Unity
     curl -o "${DOWNLOAD_DIR}/UnitySetup.sh" https://download.unity3d.com/download_unity/f18e0c1b5784/LinuxEditorInstaller/Unity.tar.xz
	 # Confirm the existence of the downloaded file
	 ls -l Unity.tar.xz
	 cd "${DOWNLOAD_DIR}" || exit 1
     tar -xzf Unity.tar.xz
     chmod +x UnitySetup.sh
     ./UnitySetup.sh --unattended --install-location=/opt/unity --components=${COMPONENTS}