# Solution

## Check for current all current resources in default namespace

```bash
kubectl get all
```

## Create a yaml file [envars.yaml](./envars.yaml)

```bash
vi envars.yaml
```

## Verify the pods are running

```bash
kubectl get pods
```

## Go to the pod and check for the envs

```bash
kubectl exec -it envars -- sh
printenv
```
