# Solution

## Login to stapp03 as banner

```bash
ssh banner@stapp03
```

## Check for docker images

```bash
sudo docker images
```

## Pull image

```bash
sudo docker pull busybox:musl && sudo docker images
```

## Tag image

```bash
sudo docker tag busybox:musl busybox:local
```

## Check images again

```bash
sudo docker images
```

