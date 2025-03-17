# Solution

## Create and apply [redis-configmap](./redis-config.yaml)

```bash
vi redis-config.yaml
kubectl apply -f redis-config.yaml
```

## Create the deployment file and copy this file [redis-deployment](./redis-deployment.yaml)

```bash
vi redis-deployment.yaml
```

## Deploy the deployment file

```bash
kubectl create -f redis-deployment.yaml
```

## Verify if it is running

```bash
kubectl get pods
kubectl get deployments
```

## Check the logs

```bash
kubectl logs -l app=redis
```

## Check if the config is correrctly mounted

```bash
kubectl exec -it <redis-pod-name> -- cat /redis-master/redis-config
```

## Run the app now
