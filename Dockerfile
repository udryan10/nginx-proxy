FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y vim
RUN apt-get install -y nginx

RUN echo "daemon off;" >> /etc/nginx/nginx.conf
RUN rm -rf /etc/nginx/sites-available/*
COPY default /etc/nginx/sites-available/

COPY index.html /data/www/

WORKDIR /etc/nginx
CMD ["nginx"]

EXPOSE 80
EXPOSE 443
