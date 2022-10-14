#!/bin/bash

## RUTAS
route1=$HOME/jenkins-h2


docker_run(){
 docker run -d --name jenkinss -p 8383:8080 -p 50003:50000 \
 -v $HOME/jenkins-h2:/var/jenkins_home \
 -v /usr/bin/docker:/usr/bin/docker \
 -v /var/run/docker.sock:/var/run/docker.sock \
 --env JENKINS_SLAVE_AGENT_PORT=50003 \
 jenkins/jenkins:lts
}

create_route(){
 mkdir -v $route1
 chown -R yagami:yagami $route1
}


## BLOQUE CONDICIONAL EJECUTABLE
if test -d $route1; then
 rm -rf $route1
 create_route
 docker_run 
else
 create_route
 docker_run 
fi
