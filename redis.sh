#!/bin/bash
bg < /bin/redis-server

# FROM ubuntu:22.04
# COPY . /app
# WORKDIR /app
# RUN apt-get update -y && apt-get install redis -y && apt-get install pip -y && apt-get install redis -y && apt-get install redis-server -y && pip install --no-cache-dir -r requirements.txt
# ENV REDIS_HOST="localhost"
# EXPOSE 5000
# RUN bg < /bin/redis-server
# # RUN /bin/redis-server & && echo "vm.overcommit_memory = 1" >> /etc/sysctl.conf && sysctl vm.overcommit_memory=1
# ENTRYPOINT flask run --host=0.0.0.0
# # #docker build -t lpampolha/linuxtips-giropops-senhas:1.0 .
# # #docker container run --name giropops-senhas -d -p 5000:5000 lpampolha/linuxtips-giropops-senhas:1.0