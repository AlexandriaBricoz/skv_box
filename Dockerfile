FROM python:3.8-slim

WORKDIR /usr/src/my_intern

RUN apt-get update && apt-get install -y unzip

RUN apt-get update && apt-get install -y wget

RUN wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip && \
    unzip ngrok-stable-linux-amd64.zip && \
    mv ngrok /usr/local/bin/

COPY . /usr/src/my_intern

EXPOSE 9000


CMD ["ngrok", "http", "9000"]


