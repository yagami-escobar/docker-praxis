##Tiramos de Ubuntu 20.04 --> Imagen Base
FROM ubuntu:18.04
MAINTAINER Bluecode Yagami "jordan19972010@gmail.com"

##Actualizamos los indices del Repo
RUN apt update

##Instalamos Apache2
RUN apt install -y apache2

##Incluimos nuestra web
ADD web1 /var/www/html

##Exponemos en el puerto 80
EXPOSE 80

##Corremos Apache en 2do Plano
CMD usr/sbin/apachectl -D FOREGROUND
