# Solution

## Check the running deployment, pods and services in the default namespace

```bash
kubectl get deployments
kubectl get svc
kubectl get pods
```

## Check the nginx-deployment deployment in yaml format and put it in a file

```bash
kubectl get deployments nginx-deployment -o yaml > deployment.yaml
```

## Edit the newly created deployment.yaml file and change the number of replicas to 5 and the container image to ngnix:latest

```bash
vi deployment.yaml
```

## Apply changes to deployment

```bash
kubectl apply -f deployment.yaml
```

## Check the nginx-service in yaml format and put in a file

```bash
kubectl get svc nginx-service -o yaml > service.yaml
```

## Change the nodeport to 32165

```bash
sed -i 's/30008/32165/' service.yaml
```

## Apply changes

```bash
kubectl apply -f service.yaml
```


## Check the running deployment, pods and services in the default namespace to see changes

```bash
kubectl get deployments
kubectl get svc
kubectl get pods
```
