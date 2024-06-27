# Solution to the task

## Postfix Mail Server

This is a free and popular open source mail transfer agent that routes and delivers email on a linux system. It is designed to be fast, secure, easy to admister and a focus on performance and reliability. It is compatible with sendmail making it easy to migrate from sendmail to postfix. [Digital Ocean](https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-postfix-on-ubuntu-22-04).

## Dovetail

Dovecot is an open source IMAP and POP3 email server for Linux/UNIX-like systems, written with security primarily in mind. It’s fast, simple to set up, requires no special administration and it uses very little memory. [Dovetail](https://doc.dovecot.org/).

### SSH into mail server

```bash
ssh groot@stmail01
```

### Install postfix and dovecot

```bash
sudo yum install -y postfix dovecot iproutes
```

### Edit the post fix configuration file and change the Listen port as per the task and also include Header at end

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
