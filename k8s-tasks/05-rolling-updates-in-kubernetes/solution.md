# Solution

## Check the containers to see the current image

```bash
kubectl get deployment nginx-deployment -o yaml
```

## Implement the rolling updates

```bash
kubectl set image deployment/nginx-deployment nginx-container=nginx:1.18
```

## Watch to view the rolling update

```bash
watch kubectl get pods
```

## Check using the rolling center

```bash
kubectl rollout status deployment nginx-deployment
```

## check the deployments again

```bash
kubectl get deployment nginx-deployment -o yaml
```
