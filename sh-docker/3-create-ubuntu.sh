#! /bin/bash

dockerx2(){ 

 docker run -d --name ubuntu1 \
 -v /var/run/docker.sock:/var/run/docker.sock \
 -v /usr/bin/docker:/usr/bin/docker \
 ubuntu:latest \
 sh -c "apt update; apt install docker.io -y; bash"
}

dockerx2
