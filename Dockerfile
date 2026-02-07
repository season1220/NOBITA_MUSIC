FROM python:3.10-slim-bullseye

# System dependencies install karna
RUN apt-get update -y && apt-get upgrade -y \
    && apt-get install -y --no-install-recommends ffmpeg opus-tools git \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY . .

# Requirements install karna
RUN pip3 install --no-cache-dir -U -r requirements.txt

# Bot start karna
CMD ["python3", "-m", "YukkiMusic"]
