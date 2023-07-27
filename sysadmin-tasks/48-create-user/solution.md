# Solution

## Login to stapp01

```bash
ssh tony@stapp01
```

## Create new user

```bash
useradd -u 1128 anita
```

## Move the home directory

```bash
usermod -d /var/www/anita -m anita
```
