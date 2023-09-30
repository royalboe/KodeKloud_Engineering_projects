# Solution

## Check for deployments

```bash
kubectl get deployments
```

## Check rollout history

```bash
kubectl rollout history deployment/nginx-deployment
```

## Rollback deployment

```bash
kubectl rollout undo deployment/nginx-deployment
```
