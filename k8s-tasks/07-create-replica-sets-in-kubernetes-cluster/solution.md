# Solution

## Check for running replica sets

```bash
kubectl get rs
```

## Create a rs.yaml file copy contents of [rs.yaml](./rs.yaml) into it

```bash
vi rs.yaml
```

## Apply the configurations

```bash
kubectl apply -f rs.yaml
```

## Check for the replica sets

```bash
kubectl get rs
```
