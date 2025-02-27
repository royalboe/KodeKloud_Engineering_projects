# Solution

## Check for current all current resources in default namespace

```bash
kubectl get all
```

## Get namespaces

```bash
kubectl get namespace
```

## Create a new namespace using the imperative method

```bash
kubectl create namespace httpd-namespace-nautilus
```

## Create a namespace using a declarative method using the yaml file [namespace](./namespace.yaml)

```bash
kubectl create -f namespace.yaml
```

## Create the deployment file and copy this file [deployment](deployment.yaml)

```bash
vi deployment.yaml
```

## Deploy the deployment file

```bash
kubectl create -f deployment.yaml
```

## Run the app now
