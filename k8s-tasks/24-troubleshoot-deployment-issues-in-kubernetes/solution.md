# Solution

## Check for current namespaces, services, pods and deployments

```bash
kubectl get pods
kubectl get deployment
kubectl get config-map
```

## Describe redis-deployment to figure the problem

```bash
kubectl describe pods <pod-name>
kubectl get deployments redis-deployment
kubectl get config-map <config-map>
```

## Edit the deployment and replace cofig with config where you find, also replace alpin with alpine and save

```bash
kubectl edit deployments redis-deployment
```

## Check for running pods and deployments

```bash
kubectl get pods
kubectl get deployments

```
