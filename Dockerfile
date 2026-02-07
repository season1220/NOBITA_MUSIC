FROM python:3.10-slim-bullseye

# System ki zaruri cheezein install karna
RUN apt-get update -y && apt-get upgrade -y \
    && apt-get install -y --no-install-recommends ffmpeg opus-tools git \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY . .

# Sari libraries install karna
RUN pip3 install --no-cache-dir -U -r requirements.txt

# BOT START KARNE KI LINE
# Agar aapke folder ka naam "Nobita" hai toh niche wali line sahi hai.
# Agar folder ka naam "NOBITA_MUSIC" hai toh Nobita ki jagah NOBITA_MUSIC likhna.
CMD python3 -m Nobita
