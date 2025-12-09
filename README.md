##Docker one Tire Project
-- This Project is for demo how docker works and How doker Hosts a site
Docker is nothing but a vm but it is light weighted.
In this Project We using nodeJs With Nextjs Framework
##Dockerfile is for bulild docker image for our app
------------------------------------------------------------------------
Follow Steps 

1} Create a VM instance with Ubuntu os on any cloud or on ubuntu os copy this cmds

2} Install Docker in Your instance Follow this link [Docker Install Guide on Ubuntu](https://docs.docker.com/engine/install/ubuntu/)

3} clone this repo
```bash
git clone https://github.com/omryakawar03/docker-build-testing.git
```
4}cd to project file

5} Steps to make docker image and run the container

This cmd will bulid a image from the Dockerfile
```
docker build -t dockertest:latest .
```
This cmd Will run the image to cointainer
```bash
docker run -d -p 3000:3000  dockertest:latest
```

6} Then copy you instance public ip address and "http://<instance public ip:3000"
