FROM ubuntu:20.04

RUN apt-get update \
    && apt-get install -y openvpn \
    && mkdir -p /dev/net \
    && mknod /dev/net/tun c 10 200 \
    && chmod 600 /dev/net/tun

COPY ./conf/ /ovpnconf/
WORKDIR /ovpnconf

CMD ["openvpn", "--config", "/ovpnconf/config_linux.conf"]
