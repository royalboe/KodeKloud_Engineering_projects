# Solution

## Check for current pods and deployments

```bash
kubectl get pods
kubectl get deployments
```

## Create the pod.yaml file and copy the content of [deployment.yaml](./deployment.yaml)

```bash
vi deployment.yaml
```

## Apply the declaration

```
kubectl apply -f deployment.yaml
```

## Check for running pods and deployments

```bash
kubectl get pods
kubectl get deployments
```
