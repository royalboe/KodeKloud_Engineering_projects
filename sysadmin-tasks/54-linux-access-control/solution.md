# Solution

## Log into the server

```bash
ssh steve@stapp02
```

## Check the current ACL

```bash
getfacl /etc/sysctl.conf
```

## Set the ACL

```bash
setfacl -m u:yousuf:-,ryan:r /etc/sysctl.conf
```
