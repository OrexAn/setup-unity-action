FROM ubuntu:latest

     # Install necessary dependencies
     RUN apt-get update && apt-get install -y \
         curl \
         unzip \
         && rm -rf /var/lib/apt/lists/*

     # Download and install Unity
     COPY install-unity.sh /install-unity.sh
     RUN chmod +x /install-unity.sh
     RUN /install-unity.sh "2022.3.1f1" "Unity, Windows"

     # Set up entry point
     COPY entrypoint.sh /entrypoint.sh
     RUN chmod +x /entrypoint.sh
     ENTRYPOINT ["/entrypoint.sh"]