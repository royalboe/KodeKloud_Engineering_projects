# Solution

## Login to the server

```bash
ssh tony@stapp01
```

## Check for current networks

```bash
docker network ls
```

## Create network

```bash
docker network create -d driver --subnet=172.168.0.0/24 --ip-range=172.168.0.1/24 blog
```

## Check for networks

```bash
docker network ls
```

