# Solution

## Check for current namespaces, services, pods and deployments

```bash
kubectl get ns
kubectl get pods
kubectl get svc
kubectl get deployment
```

## Create the pod.yaml file and copy the content of [deployment.yaml](./deployment.yaml)

```bash
vi deployment.yaml
```

## Apply the declaration

```bash
kubectl apply -f deployment.yaml
```

## Check for running pods and deployments

```bash
kubectl get ns
kubectl get pods
kubectl get svc
kubectl get deployment
```

## Perform a rolling update to version httpd:2.4.43

```bash
kubectl set image deployment/httpd-deploy httpd=httpd:2.4.43 --namespace=nautilus
```

## Check the status of the rolling update

```bash
kubectl rollout status deployment/httpd-deploy --namespace=nautilus
```

## Verify that all pods are running the new image version

```bash
kubectl get pods --namespace=nautilus
```

## Undo the recent update and roll back to the previous version

```bash
kubectl rollout undo deployment/httpd-deploy --namespace=nautilus
```

## Verify that the pods are rolled back to the original version

```bash
kubectl get pods --namespace=nautilus
```
