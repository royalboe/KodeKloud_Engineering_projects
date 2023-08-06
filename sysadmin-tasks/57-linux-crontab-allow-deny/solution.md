# Solution

## SSH into stapp02

```bash
ssh steve@stapp02
```

## Create the cron.allow and cron.deny files

```bash
echo kareem > /etc/cron.allow
echo garrett > /etc/cron.deny
```

## Restart service

```bash
systemctl restart crond.service
```
