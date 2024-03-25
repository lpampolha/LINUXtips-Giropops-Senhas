FROM cgr.dev/chainguard/python:latest-dev as buildando
WORKDIR /app
COPY . .
RUN python -m venv /app/venv && /app/venv/bin/pip install --no-cache-dir -r requirements.txt

FROM cgr.dev/chainguard/python:latest
WORKDIR /app
COPY --from=buildando /app/venv /app/venv
COPY --from=buildando /app/requirements.txt /app/
COPY --from=buildando /app/templates /app/templates
COPY --from=buildando /app/static /app/static
COPY --from=buildando /app/app.py /app/
ENV PATH="/app/venv/bin:$PATH"
EXPOSE 5000
ENTRYPOINT ["flask", "run", "--host=0.0.0.0"]
