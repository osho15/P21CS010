# Virtualization and Cloud Computing
# Assessment 1: Docker Application Deployment

## Author:
   Osho (P21CS010)
   
   [Github Repository link](http://github.com/osho/P21CS010)


### **PROJECT GOAL**
The main goal of this project is to learn to deploy a simple web application using docker containers by creating docker images from scratch.

### **PROJECT DESCRIPTION** 
A sample application which displays some text on the web page using flask is deployed using docker containers. 

###  DOCKER INSTALLATION
I have installed docker on Virtual Machine. Following are the basic commands required for the installation of Docker in Ubuntu 20.04.

```bash
#Remove (if any) Docker files that are running in the system
sudo apt-get remove docker docker-engine docker.io
#Check for system updates
sudo apt-get update
#Install docker
sudo apt install docker.io
#Install all dependencies
sudo snap install docker
#Check the version
docker --version
```

### PROCEDURE

> Create a directory called 'docker-flask-test' at /var/www . This folder contains all the other required files and folders.
  ```bash
  sudo mkdir -p /var/www/docker-flask-test
  ```  
> Inside the docker-flask-test folder create a templates folder. The templates folder contains all the files that have '.html' extension. Make sure that the name of the folder is exactly the same.
  ```bash
  cd /var/www/docker-flask-test
  sudo mkdir -p templates
  ```
> Create a flask application inside docker-test-folder. 
  ```bash
  sudo nano app.py
  ``` 
> Create a requirements file called 'requirements.txt' inside docker-flask-test folder. This file contains the exact versions and package hashes for the first-order requirements as well as the requirements-of-requirements. It is used with pip install to install packages in the docker image.
  ```bash
  sudo nano requirements.txt
  ```
> Create the Dockerfile that will tell Docker how to build the image. Make sure that the name of the file is exactly same as shown.
  ```bash
  sudo nano Dockerfile
  sudo groupadd docker
  ```
>  Provide required permissions to the user.
  ```bash
  sudo usermod -aG docker osho
  sudo chmod 666 /var/run/docker.sock
  ```
  
> Build the docker image using following command. In this case, the name of image is docker-flask-test.
  ```bash
  docker image build -t docker-flask-test .
  ```
  You can view the list of docker images using following command.
  ```bash
  docker image ls
  ```
  
> Run the docker image to create the Docker contianer. the first 5000 represents the port number for the machine on which I am working and second 5000 represents the port number on the docker container.
  ```bash
  docker run -p 5000:5000 -d docker-flask-test
  ```
  
> Go to any web browser and check localhost:5000.


  








