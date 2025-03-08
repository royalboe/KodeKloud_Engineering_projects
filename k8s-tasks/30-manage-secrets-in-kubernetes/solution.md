# Solution

## Check for current all current resources in default namespace

```bash
kubectl get all
```

## Convert file to base64reate a secret using base64, also copy content to clipboard

```bash
base64 /opt/news.txt
```


## Create a yaml file and copy the contents of [news-secret.yaml](./news_secret.yaml), copy the content in the clipboard and paste inside the news.txt block

```bash
vi news-secret.yaml
```

## Create the secret

```bash
kubectl create -f news-secret.yaml
```

## Create the pod

```bash
kubectl create -f news-secret.yaml
```

## Decode secret

```bash
kubectl get secret news -o jsonpath="{.data.news\.txt}" | base64 --decode
```

## Create pod.yaml and copy [this](./news-pod.yaml)

```bash
vi news-pod.yaml
```

## Apply pod.yaml

```bash
kubectl apply -f news-pod.yaml
```

## Verify the pods are running

```bash
kubectl get pods
```

## Run the app now
