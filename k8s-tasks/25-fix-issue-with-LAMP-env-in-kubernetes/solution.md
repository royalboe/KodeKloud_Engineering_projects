# Solution

## Check for current all current resources in default namespace

```bash
kubectl get all
```

## Edit the lamp-service to fix the nodeport error

```bash
kubectl edit service/lamp-service
pod/lamp-wp-56c7c454fc-xbtt9
```

## Check the running pod

```bash
kubectl describe pod/lamp-wp-56c7c454fc-xbtt9
```

## Run the exec command to fix the enviroment variables in the httpd container

```bash
kubectl exec -it pod/lamp-wp-56c7c454fc-xbtt9 -c httpd-php-container -- bash
```

## Inside the container, go to the app folder in root and edit index.php to fix typos

```bash
cd /app
vi index.php
```

## Save the file after and restart apache

```bash
service apache2 restart
```

## Run the app now
