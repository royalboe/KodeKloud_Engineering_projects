# Solution

## Create namespace

```bash
kubectl create namespace dev
```

## Check namespaces

```bash
kubectl get namespace
```

## Check for any running pods

```bash
kubectl get pods
```

## Copy the contents of [namespace-pod.yaml](./namespace-pod.yaml) and apply it

```bash
kubectl apply -f namespace-pod.yaml
```

## Check for namespaces

```bash
kubectl get namespace
```

## Check for pods in the dev namespace

```bash
kubectl get pods -n dev
```

## Describe the pod

```bash
kubectl describe pod dev-nginx-pod -n dev
```

## Check the image

```bash
kubectl describe pod dev-nginx-pod -n dev | grep Image
```
