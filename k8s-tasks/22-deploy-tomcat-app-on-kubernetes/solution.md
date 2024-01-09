# Solution

## Check for current namespaces, services, pods and deployments

```bash
kubectl get ns
kubectl get pods
kubectl get svc
kubectl get deployment
```

## Create the tomcat.yaml file and copy the content of [tomcat.yaml](./tomcat.yaml)

```bash
vi tomcat.yaml
```

## Apply the declaration

```bash
kubectl apply -f tomcat.yaml -n tomcat-namespace-datacenter
```

## Check for running pods and deployments

```bash
kubectl get pods -n tomcat-namespace-datacenter
kubectl get svc -n tomcat-namespace-datacenter
kubectl get -n tomcat-namespace-datacenter

```

## Check if it works

```bash
kubectl exec <pod-name> -- curl http://localhost:3000
```
