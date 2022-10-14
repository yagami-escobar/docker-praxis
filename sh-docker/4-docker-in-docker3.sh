#! /bin/bash

dockerx2(){
docker run -it -d --name test-dive \
-v /var/run/docker.sock:/var/run/docker.sock \
-v $(which docker):/bin/docker \
wagoodman/dive:latest gcr.io/google-samples/hello-app:1.0 
}

dockerx2
