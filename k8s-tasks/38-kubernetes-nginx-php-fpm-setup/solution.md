# Solution

## Create and apply [app-service](./app-service.yaml)

```bash
vi app-service.yaml
kubectl apply -f app-service.yaml
```

## Create the deployment file and copy this file [nginx-conf](./nginx-config.yaml)

```bash
vi nginx-configmap.yaml
kubectl create -f nginx-configmap.yaml
```

## Create the application

```bash
vi nginx-pod.yaml
kubectl create -f nginx-pod.yaml
```

```bash
kubectl get pods
```

## Copy index file into the container

```bash
kubectl cp /opt/index.php nginx-phpfpm:/var/www/html/index.php -c nginx-container
```

## Run the app now
