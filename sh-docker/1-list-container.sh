#! /bin/bash

## TITLE
echo "***** Bienvenido a tu Shell Script Docker $1 *****"

echo "NAME: $0 \n" ## NAME DEL FICHERO

## CODIGO DOCKER
docker ps | head -n1 && docker ps | grep "$2"
