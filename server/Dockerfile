FROM haproxy:alpine

RUN apk update && apk add wireguard-tools

COPY wg0.conf /etc/wireguard/wg0.conf

COPY haproxy.conf /usr/local/etc/haproxy/haproxy.cfg

COPY start.sh /start.sh

RUN chmod +x /start.sh

EXPOSE 5000/tcp

EXPOSE 18080/tcp

EXPOSE 6000/udp

ENTRYPOINT ["/start.sh"]
