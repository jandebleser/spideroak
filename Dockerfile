FROM ubuntu:20.04
RUN apt-get update \
    && apt-get install -y \
    wget gnupg2 \
    && rm -rf /var/lib/apt/lists/*
RUN update-ca-certificates

RUN wget https://spideroak.com/release/spideroak/deb_x64
RUN dpkg -i ./deb_x64

ADD run.sh /run.sh

ENTRYPOINT ./run.sh
ENV HOME=/spideroak
ENV HEADLESS=true

