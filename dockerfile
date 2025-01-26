FROM python:3.12-slim

LABEL maintainer="muhammad-ali"

# Install system tools + venv support
RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    python3-venv \
    && rm -rf /var/lib/apt/lists/*

COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /bin/

WORKDIR /app
COPY . /app

RUN python -m venv .venv
RUN . .venv/bin/activate && uv sync --frozen --no-cache

CMD ["/app/.venv/bin/uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]