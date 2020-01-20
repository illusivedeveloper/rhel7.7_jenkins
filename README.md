# rhel7.7_jenkins
RHEL 7.7 UBI (universal base image) including jenkins server.

This Dockerfile can be simply build and run in detached mode using:
> $ docker build -t image_name .
> $ docker container run -d -p 8080:8080 image_name

The jenkins server will run and can be browsed through port 8080 on host.
To get into the shell use:
> $ docker exec container_name /bin/bash
