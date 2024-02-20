# Solution

## Login to the app servers

```bash
ssh steve@satpp01
```

## Install cronie

```bash
sudo yum install cronie -y
```

## Reload deamon

```bash
systemctl daemon-reload
```

## Start service

```bash
systemctl start crond.service
```

## Edit cronjob for root

```bash
sudo su -
crontab -e
```

## Use as content of the crontab

```bash
*/5 * * * * echo hello > /tmp/cron_text
```

## List crontabs for root

```bash
crontab -l
```

## Check for the cron_text

```bash
ll /tmp/
```

## Do for other servers
