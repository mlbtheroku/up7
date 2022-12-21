FROM python:3.10.5-slim-buster

WORKDIR .
RUN apt -qq update && apt -qq install -y git ffmpeg

COPY . .

RUN pip3 install -r requirements.txt
EXPOSE 5000
CMD ["python3", "bot.py"]
