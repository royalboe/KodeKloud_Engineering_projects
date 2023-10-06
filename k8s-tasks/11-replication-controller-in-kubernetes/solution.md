# Solution

## Check for the running pods

```bash
kubectl get pods
```

## Create the replicacontroller yaml file and copy the content of [replica.yaml](./replica.yaml) and apply it

```bash
vi replica.yaml
kubectl create -f replica.yaml
```

## Check for running pods

```bash
kubectl get pods
```

