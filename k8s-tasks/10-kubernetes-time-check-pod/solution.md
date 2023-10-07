# Solution

## Get the current namespaces

```bash
kubectl get namespaces
```

## Get current running pods

```bash
kubectl get pods
```

## Create a file.yaml and copy the content of [time-pod.yaml](./time-pod.yaml) into it and run

```bash
kubectl create -f time-pod.yaml
```

## That will create the devops namespace, a configmap and a pod
