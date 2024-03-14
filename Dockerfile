FROM redis as base
WORKDIR /giropops-senhas
COPY . /giropops-senhas

FROM ubuntu:20.04
COPY --from=base /giropops-senhas /giropops-senhas
WORKDIR /giropops-senhas
RUN apt-get update && apt-get install pip redis -y
RUN pip install --no-cache-dir -r requirements.txt
#RUN service redis start
ENV REDIS_HOST="localhost"
EXPOSE 6379
ENTRYPOINT ["flask run --host=127.0.0.1"] 
CMD ["-D","FOREGROUND"]
#docker build -t lpampolha/linuxtips-giropops-senhas:1.0 .
