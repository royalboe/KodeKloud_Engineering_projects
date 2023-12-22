# Solution

## Log in to the stapp01 with tony

```bash
ssh tony@stapp01
```

## Go to /opt/docker folder

```bash
cd /opt/docker
```

## Check for images and build in the current context

```bash
docker images
docker build .
```

## Copy the content of [Dockerfile](./Dockerfile) into the Dockerfile

```bash
vi Dockerfile
```

## Save and build the image

```bash
docker build .
```
