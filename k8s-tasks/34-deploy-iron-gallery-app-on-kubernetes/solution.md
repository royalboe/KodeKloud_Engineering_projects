# Solution

## Create and apply [iron-app-namespace](./namespace-iron-app.yaml)

```bash
vi namespace.yaml
kubectl apply -f namespace.yaml
```

## Check for current all current resources in default namespace

```bash
kubectl get all
```

## Create the deployment file and copy this file [iron gallery app deployment](./iron-app-deployment.yaml)

```bash
vi iron-app-deployment.yaml
```

## Deploy the deployment file

```bash
kubectl create -f iron-app-deployment.yaml
```

## Create the db deployment file and copy this file [iron gallery db deployment](./iron-db-deployment.yaml)

```bash
vi iron-db-deployment.yaml
```

## Deploy the db deployment file

```bash
kubectl create -f iron-db-deployment.yaml
```

## Create the app service file and copy this file [iron gallery service deployment](./iron-app-service.yaml)

```bash
vi iron-app-service.yaml
```

## Deploy the app service file

```bash
kubectl create -f iron-app-service.yaml
```

## Create the db service file and copy this file [iron gallery db service](./iron-db-service.yaml)

```bash
vi iron-db-service.yaml
```

## Deploy the db service file

```bash
kubectl create -f iron-db-service.yaml
```


## Get pods running under the namespace

```bash
kubectl get all -n iron-namespace-xfusion
```

## Run the app now
