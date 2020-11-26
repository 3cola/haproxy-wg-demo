
Remarks:
  * Wireguard will work in a container only with special permissions to setup interface on the host: cap_add NET_ADMIN

Usage:
  start:
    docker-compose up
  clean:
    docker-compose down
    docker-compose rm
    docker images | grep none | awk '{ print $3}' | xargs docker rmi
    docker images | grep :poc | awk '{ print $3}' | xargs docker rmi
