# Solution

## SSH into the server

```bash
ssh tony@stapp01
```

## Check the running containers

```bash
docker ps
```

## Run the exec command to attach to the sh of the running container

```bash
docker exec -it kkloud /bin/sh
```

## Install apache2

```bash
apt install apache2 -y
```

## edit the ports

```bash
sed -i 's/Listen 80/Listen 8089/g' /etc/apache2/ports.conf

sed -i 's/:80/:8089/g' /etc/apache2/apache2.conf

sed -i 's/#ServerName www.example.com/ServerName localhost/g' /etc/apache2/apache2.conf
```

## Start the service

```bash
service apache2 start
service apache2 status
```
