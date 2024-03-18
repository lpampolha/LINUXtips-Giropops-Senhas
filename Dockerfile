FROM ubuntu:22.04
COPY . /app
WORKDIR /app
RUN apt-get update -y && apt-get install redis -y && apt-get install pip -y && apt-get install redis -y && apt-get install redis-server -y && pip install --no-cache-dir -r requirements.txt
ENV REDIS_HOST="localhost"
EXPOSE 5000
RUN ["redis-server"]
CMD ["flask run --host=0.0.0.0", "-g", "daemon off;"]
# #docker build -t lpampolha/linuxtips-giropops-senhas:1.0 .
# #docker container run --name giropops-senhas -d -p 5000:5000 lpampolha/linuxtips-giropops-senhas:1.0
