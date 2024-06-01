
# Solution

1. SSH into APP Server 3

```bash
        banner@stapp03
        sudo su -
```

2. Edit the resolv.conf file as per the task to contain google DNS ip

```bash
       vi /etc/resolv.conf

        nameserver 8.8.8.8
```
