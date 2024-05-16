FROM python:3.9-slim

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir Flask

ENV FLASK_APP=main.py

EXPOSE 5000

HEALTHCHECK --interval=30s --timeout=3s \
  CMD curl -f http://localhost:5000/health || exit 1

RUN echo "Healthcheck configured. Endpoint: /health"

CMD ["flask", "run", "--host=0.0.0.0"]