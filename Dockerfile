#FROM redis as base
#WORKDIR /giropops-senhas
#COPY . /giropops-senhas
#
FROM alpine:3.15.9
#COPY --from=base /giropops-senhas /giropops-senhas
COPY . /giropops-senhas
WORKDIR /giropops-senhas
RUN apk update && apk add redis py-pip && pip install --no-cache-dir -r requirements.txt
#RUN service redis start
ENV REDIS_HOST="localhost"
EXPOSE 6379
ENTRYPOINT flask run --host=127.0.0.1
#docker build -t lpampolha/linuxtips-giropops-senhas:1.0 .
