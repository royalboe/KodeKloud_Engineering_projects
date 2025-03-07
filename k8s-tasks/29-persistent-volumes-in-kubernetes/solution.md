# Solution

## Check for current all current resources in default namespace

```bash
kubectl get all
```


## Create a yaml file and copy the contents of [volumes.yaml](./volumes.yaml)

```bash
vi volumes.yaml
```

## Create the resources in the file

```bash
kubectl create -f volumes.yaml
```

## Verify the pods are running

```bash
kubectl get pods
kubectl get svc
```

## Run the app now
