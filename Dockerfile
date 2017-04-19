FROM debian:jessie

ADD . /rpi-builder

RUN apt-get update && apt-get install make

WORKDIR /rpi-builder

VOLUME source
VOLUME build

ENTRYPOINT ["make"]
