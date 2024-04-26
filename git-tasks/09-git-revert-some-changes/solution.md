# Solution

## Login

```bash
ssh natasha@ststor01
```

## Change to superuser

```bash
sudo su
```

## Navigate to the directory

```bash
cd /usr/src/kodekloudrepos/beta
```

## Check for logs

```bash
git log
```

## Revert to HEAD, input commit message and save

```bash
git revert HEAD
```

## Add untracked files and commit with commit message revert demo

```bash
git add .
git commit -m 'revert demo'
```
