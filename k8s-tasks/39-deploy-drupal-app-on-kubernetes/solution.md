# Solution

## create the deplopment, service and volume files

```bash
kubectl create -f volume.yaml
kubectl create -f mysql-dep.yaml
kubectl create -f mysql-service.yaml
---

## Verify the code

```bash
kubectl get all
```