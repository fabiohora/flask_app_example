FROM python:3.12-slim
WORKDIR /app

ENV PIP_NO_CACHE_DIR=1 \
  PYTHONDONTWRITEBYTECODE=1 \
  PYTHONUNBUFFERED=1 \
  FLASK_APP=hello

RUN apt-get update && apt-get install -y --no-install-recommends \
  build-essential \
  && rm -rf /var/lib/apt/lists/*

COPY setup.py pyproject.toml ./
COPY hello/ ./hello/

RUN pip install --upgrade pip && \
  pip install -e .

CMD ["flask", "run", "--host=0.0.0.0", "--port=12345"]
EXPOSE 12345
