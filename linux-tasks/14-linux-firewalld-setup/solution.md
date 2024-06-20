# Solution

## Description

Firewalld is a frontend for iptables. It is a firewall management solution available for many Linux distributions which acts as a frontend for the iptables packet filtering system provided by the Linux kernel [Digital Ocean](https://www.digitalocean.com/community/tutorials/how-to-set-up-a-firewall-using-firewalld-on-centos-7). It is used to persist network configuration settings as it acts as a controller for nftables. Unlike nftables (or iptables):

- Firewalld uses zones and services instead of chain and rules.
- It manages rulesets dynamically, allowing updates without breaking existing sessions and connections. [Linode](https://www.linode.com/docs/guides/introduction-to-firewalld-on-centos/).

### Zones

These are preconfigured rulesets dictating the traffic that should be allowed depending on the level of trust/confidence in the network your computer is connected to. Each zone allows different traffic and the public zone is the default. A network interface is assigned to a zone and an interface not assigned a zone is given the default zone. Rules configured in firewalld-cmd are ephemeral and they are reversed after a reload, to make a rule permanent, use the --permanent flag and the rule is automatically loaded after rebooting.
There are 9 preconfigured zones in firewalld from the most trusted to the least trusted and these are

- Drop
- Block
- Public
- External
- Internal
- DMZ
- Work
- Home
- Trusted

For additional reading, check [Digital Ocean](https://www.digitalocean.com/community/tutorials/how-to-set-up-a-firewall-using-firewalld-on-centos-7) or [Linode](https://www.linode.com/docs/guides/introduction-to-firewalld-on-centos/).

### Install firewalld

```bash
sudo yum install -y firewalld
```

### Check the status of apache and Nginx

```bash
sudo systemctl status httpd
sudo systemctl status nginx
```

### Start, enable and check status of firewalld

```bash
sudo systemctl start firewalld
sudo systemctl enable firewalld
sudo systemctl status firewalld
```

### Verify the state of the firewalld service

```bash
sudo firewall-cmd --state
```

### Get the default zone and the rules configured for it

```bash
firewall-cmd --get-default-zone
firewall-cmd --get-active-zones
sudo firewall-cmd --list-all
sudo firewall-cmd --zone=public --list-all 
```

### Add port 80 to firewalld

```bash
sudo firewall-cmd --permanent --zone=public --add-port=80/tcp
```

### Remove port 8080
  
```bash
sudo firewall-cmd --zone=public --remove-port=8080/tcp --permanent
```

### Check the list of rules in public zone

```bash
sudo firewall-cmd --zone=public --list-all
```

### Persist permanent configuration

```bash
sudo firewall-cmd --reload
```
