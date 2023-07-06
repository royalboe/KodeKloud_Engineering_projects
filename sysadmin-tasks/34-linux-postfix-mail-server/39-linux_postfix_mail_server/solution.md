# Solution to the task

SSH into app server 2 and switch to root:

```bash
ssh groot@stmail01
```

Install postfix and dovecot:

```bash
sudo yum install -y postfix dovecot iproutes
``` 

Edit the post fix configuration file and change the Listen port as per the task and also include Header at end:

```bash
vi /etc/postfix/main.cf
```

Add the following

```bash
myhostname = stmail01.stratos.xfusioncorp.com
mydomain = stratos.xfusioncorp.com
myorigin = $mydomain
inet_interfaces = all
mydestination = $myhostname, localhost.$mydomain, localhost, $mydomain
mynetworks = 172.16.238.0/24, 127.0.0.0/8
home_mailbox = Maildir/
```

Search for inet_interfaces and comment out the one with localhost.
Also search for ``mydestination`` and comment the first one.
