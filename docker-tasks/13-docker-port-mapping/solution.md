# Solution

## Login to the server

```bash
ssh steve@stapp02
```

## Run the container and map port

```bash
docker run -d --name demo -p 8088:80 nginx:latest
```

## Check for containers

```bash
docker container ls
```
