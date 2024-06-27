# Solution

## Login to the Database Server

```bash
ssh peter@stdb01
```

## Check the mariadb service

```bash
sudo systemctl status mariadb
```

## Start service and check for status again

```bash
sudo systemctl start mariadb
sudo systemctl status mariadb
```

## Check the /var/lib/ folder for mysql folder

The folder named mysqld was found instead of mysql, this is what is causing the error. Rename the folder

```bash
cd /var/lib
sudo mv mysqld mysql
```

## Start mariadb and check status

```bash
sudo systemctl start mariadb
sudo systemctl status mariadb
```
