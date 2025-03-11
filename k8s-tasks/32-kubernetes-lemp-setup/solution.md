# Solution

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

## Create the secrets using a declarative method using the yaml file [my_sql-secrets](./my_sql_secrets.yaml), make sure secret data are base64 encoded

```bash
echo '<content>' | base64
vi my_sql_secrets
kubectl create -f my_sql-secrets.yaml
```

## Create the deployment file and copy this file [deployment](./lemp.yaml)

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

```

## Copy index.php into the running container

```bash
POD_NAME=$(kubectl get pods -l app=lemp -o jsonpath="{.items[0].metadata.name}")
kubectl cp /tmp/index.php $POD_NAME:/app -c nginx-php-container
```

## Get a terminal in the nginx container

```bash
kubectl exec -it $POD_NAME -c nginx-php-container -- /bin/sh
```

## Replace the content of /app/index.php and it looks this way [index.php](./index.php)

```bash
sed -i 's/dbhost/getenv("MYSQL_HOST");/g' /app/index.php
sed -i 's/dbname/getenv("MYSQL_DATABASE");/g' /app/index.php
sed -i 's/dbuser/getenv("MYSQL_USER");/g' /app/index.php
sed -i 's/dbpass/getenv("MYSQL_PASSWORD");/g' /app/index.php
exit
```

## Verify the pods are running

```bash
kubectl get pods
kubectl get svc
```

## Run the app now
