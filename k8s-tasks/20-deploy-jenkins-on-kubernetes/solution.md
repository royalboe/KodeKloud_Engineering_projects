# Solution

## Check for current namespaces, services, pods and deployments

```bash
kubectl get ns
kubectl get pods
kubectl get svc
kubectl get deployment
```

## Create the jenkins.yaml file and copy the content of [jenkins.yaml](./jenkins.yaml)

```bash
vi jenkins.yaml
```

## Apply the declaration

```bash
kubectl apply -f jenkins.yaml
```

## Check for running pods and deployments

```bash
kubectl get pods -n jenkins
kubectl get svc -n jenkins
kubectl get deployment -n jenkins
```

## Check if it works

```bash
kubectl exec <pod-name> -n jenkins -- curl http://localhost:8080
```
