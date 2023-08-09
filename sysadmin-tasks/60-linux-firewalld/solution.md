# Solution

* Log into the server

```bash
ssh clint@stbkp01
```

* To add the rule

```bash
sudo firewall-cmd --permanent --zone=public --add-port=6400/tcp
```

* Reload firewalld Service

```bash
sudo firewall-cmd --reload
```

* Restart firewalld

```bash
sudo systemctl restart firewalld
```

* Check work

```bash
sudo firewall-cmd --zone=public --list-all
```

