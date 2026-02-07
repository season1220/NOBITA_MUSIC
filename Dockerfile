FROM nikolaik/python-nodejs:python3.10-nodejs19

RUN apt-get update && apt-get install -y ffmpeg opus-tools python3-pip

WORKDIR /app
COPY . .

RUN pip3 install --no-cache-dir -U -r requirements.txt

CMD ["python3", "-m", "YukkiMusic"]
