# Solution

## Check for current all current resources in default namespace

```bash
kubectl get all
```

## Get running pods

```bash
kubectl get pods
```

## Describe the pod to know what is wrong

```bash
kubectl describe pod <Pod-name>
```

## Check deployment

```bash
kubectl decribe deployment  python-deployment-xfusion
```

## Check svc

```bash
kubectl descrive svc python-service-xfusion
```

## Noticed the wrong image name in deployment, edit it and added the right image name

```bash
kubectl edit deployment python-deployment-xfusion
```

## Noticed the wrong targetport name in service, edited it

```bash
kubectl edit service python-service-xfusion
```

## Run the app now
