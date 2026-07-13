FROM python:3.12-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
    git curl ca-certificates && rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir openharness-ai

WORKDIR /workspace
CMD ["ohmo", "gateway", "run"]
