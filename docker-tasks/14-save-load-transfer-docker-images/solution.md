# Solution

## Login to server 1

```bash
ssh tony@stappp01
```

## Check for images and save the image media:datacenter

```bash
docker images
docker save -o datacenter.tar media:datacenter
```

## Transfer image

```bash
scp datacenter.tar banner@stapp03:/home/banner
```

## Login to stapp03

```bash
ssh banner@stapp03
```

## Load the image

```bash
docker load -i datacenter.tar
```
