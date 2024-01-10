# Solution

## Check for current namespaces, services, pods and deployments

```bash
kubectl get pods
kubectl get svc
kubectl get deployment
```

## Create the node-app.yaml file and copy the content of [node-app.yaml](./node-app.yaml)

```bash
vi node-app.yaml
```

## Apply the declaration

```bash
kubectl apply -f node-app.yaml
```

## Check for running pods and deployments

```bash
kubectl get pods
kubectl get svc 
kubectl get deployments

```
