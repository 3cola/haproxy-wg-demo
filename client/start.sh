#!/bin/sh

wg-quick down wg0
wg-quick up wg0

sleep 2

ping -c 3 10.0.88.2
ping -c 3 172.2.0.10

/docker-entrypoint.sh haproxy -c -f /usr/local/etc/haproxy/haproxy.cfg
/docker-entrypoint.sh haproxy -W -db -f /usr/local/etc/haproxy/haproxy.cfg
