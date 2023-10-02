# solution

## Check for namespaces

```bash
kubectl get ns

## Check for any running cronjobs in default ns

```bash
kubectl get cronjobs
```

## Copy the content of [nautilus.yaml](./nautilus.yaml) and paste in a new file

```bash
vi nautilus.yaml
```

## Apply the cronjob

```bash
kubectl create -f nautilus.yaml
```

## Check for other cronjobs

```bash
kubectl get cronjobs
```
