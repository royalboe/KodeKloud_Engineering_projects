# Solution

## Login to the server

```bash
ssh tony@stapp01
```

## check and Stop the running container

```bash
docker ps -a && docker rm nautilus
```

## Run the container properly

```bash
docker run -d --name nautilus -p 8080:80 -v /var/www/html:/usr/local/apache2/htdocs httpd
```
