from ubuntu:14.04

COPY shadowsocks-all.sh /shadowsocks-all.sh
RUN chmod +x shadowsocks-all.sh
RUN ./shadowsocks-all.sh 2>&1

CMD ["/usr/bin/shadowsocks-server", "-c", "/etc/shadowsocks-go/config.json"]

