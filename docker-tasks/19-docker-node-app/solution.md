# Solution

## Log in to the stapp01 with tony

```bash
ssh tony@stapp01
```

## Go to /opt/docker folder

```bash
cd /node_app
```

## Copy the content of [Dockerfile](./Dockerfile) into the Dockerfile

```bash
vi Dockerfile
```

## Build docker image

```bash
sudo docker build -t nautilus/node-web-app .
```

## Check for the images

```bash
sudo docker images
```

## Run the container

```bash
sudo docker run --name nodeapp_nautilus -p 8093:8086 nautilus/node-web-app
```

## Check the running containers

```bash
sudo docker ps
```

## Check for running app

```bash
curl http://localhost:8093
```
