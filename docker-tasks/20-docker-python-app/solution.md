# Solution

## Log in to the stapp01 with tony

```bash
ssh steve@stapp02
```

## Go to /python_app folder

```bash
cd /python_app
```

## Copy the content of [Dockerfile](./Dockerfile) into the Dockerfile

```bash
vi Dockerfile
```

## Build docker image

```bash
sudo docker build -t nautilus/python-app .
```

## Check for the images

```bash
sudo docker images
```

## Run the container

```bash
sudo docker run -d --name pythonapp_nautilus -p 8091:6000 nautilus/python-app
```

## Check the running containers

```bash
sudo docker ps
```

## Check for running app

```bash
curl http://localhost:8093
```
