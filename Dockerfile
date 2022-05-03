FROM ubuntu:20.04
MAINTAINER Mavlonazarov Daulet <daulet.mavlonazarov@zyfra.com>

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    && apt-get install -y openvpn \
    && apt-get install -y iputils-ping \
    && apt-get install nano \
    && mkdir -p /dev/net \
    && mknod /dev/net/tun c 10 200 \
    && chmod 600 /dev/net/tun

COPY ./conf/ /ovpnconf/

CMD ["openvpn", "--config", "/ovpnconf/config_linux.conf", "--daemon"]

