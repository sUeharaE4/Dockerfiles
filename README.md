# Dockerfiles

This repository is a collection of Dockerfiles used for the local development environment.

## Install docker
Please refer to the official website for detailed procedures. Installation is completed by simply executing the commands.
https://docs.docker.com/engine/install/ubuntu/

## Install NVIDIA Docker
Please refer to the official website for detailed procedures. https://github.com/NVIDIA/nvidia-docker
The command execution contents are as of November 2020 and OS is Ubuntu18.04.

Install nvidia driver
```
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/cuda-ubuntu1804.pin
sudo mv cuda-ubuntu1804.pin /etc/apt/preferences.d/cuda-repository-pin-600
wget https://developer.download.nvidia.com/compute/cuda/11.1.0/local_installers/cuda-repo-ubuntu1804-11-1-local_11.1.0-455.23.05-1_amd64.deb
sudo dpkg -i cuda-repo-ubuntu1804-11-1-local_11.1.0-455.23.05-1_amd64.deb
sudo apt-key add /var/cuda-repo-ubuntu1804-11-1-local/7fa2af80.pub
sudo apt-get update
sudo apt-get -y install cuda-drivers
```
see official site to search other OS or driver version. https://developer.nvidia.com/cuda-toolkit-archive

Install NVIDIA Container Toolkit
```
distribution=$(. /etc/os-release;echo $ID$VERSION_ID)
curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | sudo apt-key add -
curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | sudo tee /etc/apt/sources.list.d/nvidia-docker.list
sudo apt-get update
sudo apt-get install -y nvidia-docker2
sudo systemctl restart docker
```
see official site to search other OS or driver version. https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/install-guide.html#installing-docker-ce
