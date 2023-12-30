# Solution

## Check for current pods

```bash
kubectl get pods
```

## Create the pod.yaml file and copy the content of [webserver.yaml](./webserver.yaml)

```bash
vi webserver.yaml
```

## Apply the declaration

```
kubectl apply -f webserver.yaml
```

## Check for running pods

```bash
kubectl get pods
```
