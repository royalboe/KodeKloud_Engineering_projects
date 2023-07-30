# Solution

SSH into app server 1 and switch to root:  

```bash
ssh tony@stapp01
```

Disable remote login on the server by editing the /etc/ssh/sshd_config file:  

```bash
echo PermitRootLogin no >> /etc/ssh/sshd_config
```

For the changes to take effect, restart sshd service:

```bash
systemctl restart sshd
```

Repeat on app servers 2 and 3.