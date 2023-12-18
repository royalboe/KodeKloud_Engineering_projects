# Solution

## Login to the server

```bash
ssh tony@stapp01
```

## Copy the file from /tmp

```bash
cp /tmp/sample.txt /opt/data/sample.txt

## Run the container and map volume

```bash
docker run -d --name news -v /opt/data:/usr/src/ nginx:latest
```

## Check for containers

```bash
docker container ls
```
