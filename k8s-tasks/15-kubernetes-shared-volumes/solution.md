# Solution

## Check for current pods

```bash
kubectl get pods
```

## Create the pod.yaml file and copy the content of [volume-pod.yaml](./volume-pod.yaml)

```bash
vi volume-pod.yaml
```

## Apply the declaration

```
kubectl apply -f volume-pod.yaml
```

## Check for running pods

```bash
kubectl get pods
```

## Exec into the the first pod to create a file in the shared volume

```bash
kubectl exec -it volume-share-datacenter -c volume-container-datacenter-1 -- /bin/bash
echo "This is official.txt" > /tmp/official/official.txt
exit
```

## Exec into the second pod to make sure file is present

```bash
kubectl exec -it volume-share-datacenter -c volume-container-datacenter-2 -- /bin/bash
cat /tmp/cluster/official.txt
exit
```
