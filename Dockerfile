FROM python:3.11-slim AS base
RUN apt-get update && \
    apt-get install -y --no-install-recommends curl && \
    rm -rf /var/lib/apt/lists/*
WORKDIR /usr/local/app
EXPOSE 80
CMD ["python3", "rpg.py"]
