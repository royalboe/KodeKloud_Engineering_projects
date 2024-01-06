# Solution

## Check for current namespaces, services, pods and deployments

```bash
kubectl get ns
kubectl get pods
kubectl get svc
kubectl get deployment
```

## Create the jenkins.yaml file and copy the content of [grafana.yaml](./grafana.yaml)

```bash
vi grafana.yaml
```

## Apply the declaration

```bash
kubectl apply -f grafana.yaml
```

## Check for running pods and deployments

```bash
kubectl get pods
kubectl get svc 
kubectl get deployment
```

## Check if it works

```bash
kubectl exec <pod-name> -- curl http://localhost:3000
```
