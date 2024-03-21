FROM python:3.11-slim
WORKDIR /app
COPY . /app
RUN pip install --no-cache-dir -r requirements.txt
ENV REDIS_HOST="ip_da_sua_interface"
EXPOSE 5000
ENTRYPOINT flask run --host=0.0.0.0