FROM python:3.10-slim-bullseye

RUN apt-get update -y && apt-get upgrade -y \
    && apt-get install -y --no-install-recommends ffmpeg opus-tools git \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY . .

RUN pip3 install --no-cache-dir -U -r requirements.txt

# KOYEB BYPASS JUGAAD: 
# Ye line ek fake server 8000 port par chalu karegi aur phir aapka bot start karegi
CMD python3 -m http.server 8000 & python3 -m NOBITA_MUSIC
