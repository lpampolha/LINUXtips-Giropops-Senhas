FROM ubuntu:22.04
COPY . /app
WORKDIR /app
RUN apt-get update -y && apt-get install redis -y && apt-get install pip -y && apt-get install redis -y && apt-get install redis-server -y && pip install --no-cache-dir -r requirements.txt
ENV REDIS_HOST="localhost"
EXPOSE 5000
RUN echo 'vm.overcommit_memory = 1' >> /etc/sysctl.conf
RUN sysctl vm.overcommit_memory=1
ENTRYPOINT flask run --host=0.0.0.0
HEALTHCHECK --timeout=2s CMD /bin/redis-server & > /dev/null || exit 1