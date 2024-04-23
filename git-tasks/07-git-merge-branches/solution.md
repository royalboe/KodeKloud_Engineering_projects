# Solution

## Login

```bash
ssh natasha@ststor01
```

## Change to superuser

```bash
sudo su -
```

## Navigate to the directory

```bash
cd /usr/src/kodekloudrepos/media
```

## Check for current branches

```bash
git branch -a
```

## Change to master branch

```bash
git checkout master
```

## Create new branch

```bash
git checkout -b datacenter
```

## Copy the /tmp/index.html

```bash
cp /tmp/index .
```

## Add and commit changes

```bash
git add .
git commit -m 'added new files'
```

## Push changes to origin

```bash
git push origin datacenter
```

## Merge changes and push changes

```bash
git switch master
git merge datacenter
git push origin master
```
