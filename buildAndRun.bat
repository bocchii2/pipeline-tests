@echo off
call mvn clean package
call docker build -t moe.alisa/alisaapp .
call docker rm -f alisaapp
call docker run -d -p 9080:9080 -p 9443:9443 --name alisaapp moe.alisa/alisaapp