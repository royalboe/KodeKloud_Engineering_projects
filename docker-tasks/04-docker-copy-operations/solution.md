# Solution

## Log into the app server

```bash
ssh steve@stapp02
```

## Run the commnad to copy

```bash
docker cp /tmp/nautilus.txt.gpg ubuntu_latest:/opt/
```

## Confirm the file is there

```bash
docker exec ubuntu_latest  ls -ltr /opt/
```
