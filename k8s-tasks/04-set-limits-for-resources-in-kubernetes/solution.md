# Solution

## Check for running pods

```bash
kubectl get pods
```

## Create a pod.yaml file copy contents of [pod.yaml](./pod.yaml) into it

```bash
vi pod.yaml
```

## Apply the configurations

```bash
kubectl apply -f pod.yaml
```

## Check for the pod

```bash
kubectl get pods
```
