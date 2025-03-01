# Solution

## Check for current all current resources in default namespace

```bash
kubectl get all
```


## Create a configmap file and copy the contents of [php-config](./php-config.yaml) into it, then apply it

```bash
vi php-config.yaml
kubectl create -f php-config.yaml
```

## Create a namespace using a declarative method using the yaml file [my_sql-secrets](./my_sql-secrets.yaml)

```bash
vi my_sql-secrets
kubectl create -f my_sql-secrets.yaml
```

## Create the deployment file and copy this file [deployment](./php-deployment.yaml)

```bash
vi deployment.yaml
```

## Deploy the deployment file

```bash
kubectl create -f deployment.yaml
```

## Create the services yaml file and copy the contents from [services](./services.yaml)

```bash
vi services.yaml
```

## Deploy the services

```bash
kubectl create -f services.yaml
```

## Replace the content of /tmp/index.php with the contents in [index.php](./index.php)

```bash
sudo vi /tmp/index.php
```

## Copy index.php into the running container

```bash
POD_NAME=$(kubectl get pods -l app=lamp-wp -o jsonpath="{.items[0].metadata.name}")
kubectl cp /tmp/index.php $POD_NAME:/app -c httpd-php-container
```

## Verify the pods are running

```bash
kubectl get pods
kubectl get svc
```

## Run the app now
