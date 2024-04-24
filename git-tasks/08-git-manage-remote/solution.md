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

## Check for current remotes

```bash
git remote -a
```

## Create a new remote

```bash
git remote add dev_demo /opt/xfusioncorp_demo.git
```

## Copy the /tmp/index.html

```bash
cp /tmp/index.html .
```

## Add and commit changes

```bash
git add .
git commit -m 'added new files'
```

## Push changes to dev_demo

```bash
git push dev_demo master
```
