#! /bin/bash

dockerx2(){
docker run -it -d --name test-c1 \
-v /var/run/docker.sock:/var/run/docker.sock \
docker:latest
}

dockerx2
