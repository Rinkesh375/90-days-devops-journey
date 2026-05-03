FROM python:3.9-slim

WORKDIR /app

# Avoid interactive prompts (important)
ENV DEBIAN_FRONTEND=noninteractive

# Install only required packages (NO upgrade ❌)
RUN apt-get update \
    && apt-get install -y gcc default-libmysqlclient-dev pkg-config \
    && rm -rf /var/lib/apt/lists/*

COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir mysqlclient \
    && pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python", "app.py"]