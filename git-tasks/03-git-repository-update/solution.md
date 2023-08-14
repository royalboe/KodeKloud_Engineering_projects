# Solution

## Copy file

```bash
sudo scp /tmp/index.html  natasha@ststor01:/tmp
```

## Login to Storage App

```bash
ssh natasha@ststor01
```

## Copy file to destination

```bash
sudo cp /tmp/index.html /usr/src/kodekloudrepos/ecommerce/index.html
```

## Stage file

```bash
sudo git add index.html
```

## Commit file

```bash
sudo git commit -m 'added index.html
```

## Push to master branch on remote

```bash
sudo git push origin master
```