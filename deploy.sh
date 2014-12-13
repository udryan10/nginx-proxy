#/bin/bash

docker kill nginx-proxy
docker rm nginx-proxy
docker build -t nginx-proxy .
docker run -d --name="nginx-proxy" -p 80:80 nginx-proxy
