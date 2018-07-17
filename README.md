# LSTS-toolchain-macOS
Docker Environment for LSTS-Toolchain.

This repository implements a docker environment that allows macOS to use [LSTS](https://lsts.fe.up.pt/toolchain) tools.
The repositories cloned within the container are those of the official [LSTS GitHub](https://github.com/LSTS) page.

The method presented here has been tested on macOS High Sierra Version 10.13.5.
Slight modifications may apply on a Windows host operative system.
The docker image allows the deployment of containers on top any host OS.

## Host Prerequisites
  * Install [XQuartz](https://www.xquartz.org/) and enable "Allow connections from network clients" under Preferences ->       Security.
  * Install [Docker for Mac](https://docs.docker.com/docker-for-mac/) and create your Docker account.

## Installation
  * Open a terminal and check Docker installation:
  ```
  docker run hello-world
  ```
  Docker will first try to find the image locally, then it will pull the image from Docker server.
  You can check the IMAGE_ID with:
  ```
  docker images
  ```
  As Docker works fine, remove the pulled image as it won't be needed:
  ```
  docker rmi -f IMAGE_ID
  ```
  * Login with your docker credentials:
  ```
  docker login
  ```
  * Navigate to the cloned repo and generate the environment variables:
  ```
  cd ~/LSTS-toolchain-macOS
  source env.sh
  ```
  * Build the image:
  ```
  bash build.sh
  ```
  * Run it:
  ```
  bash run.sh $VERSION
  ```
