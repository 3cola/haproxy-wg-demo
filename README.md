![diagram](https://raw.githubusercontent.com/3cola/haproxy-wg-demo/master/rTCPk8S.png)

### Remarks:
  * Wireguard will work in a container only with special permissions to setup interface on the host: cap_add NET_ADMIN

### Usage:  
  * start:  
    `docker-compose up --build  `
  * clean:  
    ```
    docker-compose down  
    docker images | grep poc | awk '{ print $3}' | xargs docker rmi  
    ```
