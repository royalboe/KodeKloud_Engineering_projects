# Solution

## Run container on port 80

```bash
sudo docker run -d --name nginx_1 -p 8080:80 nginx:alpine
```

## Check to see if it is running

```bash
sudo docker ps
```
