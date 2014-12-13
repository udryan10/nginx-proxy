#/bin/bash

docker kill nginx-proxy
docker rm nginx-proxy
docker build -t lngarrett/nginx-proxy .
docker run -d --name="nginx-proxy" -p 80:80 lngarrett/nginx-proxy
