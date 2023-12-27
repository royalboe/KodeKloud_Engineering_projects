# Solution

## Log in to the stapp01 with tony

```bash
ssh tony@stapp01
```

## Go to /opt/docker folder

```bash
cd /opt/docker
```

## Copy the content of [docker-compose](./docker-compose.yaml) into the docker-compose.yml

```bash
vi docker-compose.yml
```

## Check for images and build in the current context

```bash
sudo docker-compose up -d
```

## Run docker compose

```bash
sudo docker-compose up -d
```

## Check the running containers

```bash
sudo docker ps
```
