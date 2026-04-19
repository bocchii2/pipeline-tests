#!/bin/sh
if [ $(docker ps -a -f name=alisaapp | grep -w alisaapp | wc -l) -eq 1 ]; then
  docker rm -f alisaapp
fi
mvn clean package && docker build -t moe.alisa/alisaapp .
docker run -d -p 9080:9080 -p 9443:9443 --name alisaapp moe.alisa/alisaapp
