#! /bin/bash

dockerx2(){
docker run -it -d --name test-c2 \
-v /var/run/docker.sock:/var/run/docker.sock \
-v $(which docker):/bin/docker \
ubuntu:latest
}

dockerx2
