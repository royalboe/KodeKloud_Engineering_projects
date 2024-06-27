# Solution

## Login to each of the application server one after the other

```bash
ssh steve@stapp02
ssh tony@stapp01
ssh banner@stapp03
```

## Check for the status of the apache

```bash
sudo systemctl status httpd
```

## Start the service

After starting the service, the service ran on the application servers asides application server 3 where I got an error.

```bash
sudo systemctl start httpd
```

## Check status

After checking the status, I got the below error code indicating a typo in the config file /etc/httpd/conf/httpd.conf line 34.

```bash
sudo systemctl status mariadb
```

```bash
Jun 27 14:17:32 stapp03.stratos.xfusioncorp.com systemd[2922]: httpd.service: Executing: /usr/sbin/httpd -DFORE>
Jun 27 14:17:32 stapp03.stratos.xfusioncorp.com httpd[2922]: httpd: Syntax error on line 34 of /etc/httpd/conf/>
Jun 27 14:17:32 stapp03.stratos.xfusioncorp.com systemd[1]: httpd.service: Child 2922 belongs to httpd.service.
Jun 27 14:17:32 stapp03.stratos.xfusioncorp.com systemd[1]: httpd.service: Main process exited, code=exited, st>
Jun 27 14:17:32 stapp03.stratos.xfusioncorp.com systemd[1]: httpd.service: Failed with result 'exit-code'.
Jun 27 14:17:32 stapp03.stratos.xfusioncorp.com systemd[1]: httpd.service: Service will not restart (restart se>
Jun 27 14:17:32 stapp03.stratos.xfusioncorp.com systemd[1]: httpd.service: Changed start -> failed
Jun 27 14:17:32 stapp03.stratos.xfusioncorp.com systemd[1]: httpd.service: Job 245 httpd.service/start finished>
Jun 27 14:17:32 stapp03.stratos.xfusioncorp.com systemd[1]: Failed to start The Apache HTTP Server.
Jun 27 14:17:32 stapp03.stratos.xfusioncorp.com systemd[1]: httpd.service: Unit entered failed state.
```

```bash
sudo vi /etc/httpd/conf/httpd.conf
```

## Restarted and checked for status

After restarting I got another message regarding a misspelled line

```bash
sudo systemctl start mariadb
sudo systemctl status mariadb
```

```bash
Jun 27 14:20:13 stapp03.stratos.xfusioncorp.com httpd[3109]: Invalid command 'Listen 3002', perhaps misspelled >
Jun 27 14:20:13 stapp03.stratos.xfusioncorp.com systemd[1]: httpd.service: Got notification message from PID 31>
Jun 27 14:20:13 stapp03.stratos.xfusioncorp.com systemd[1]: httpd.service: Child 3109 belongs to httpd.service.
Jun 27 14:20:13 stapp03.stratos.xfusioncorp.com systemd[1]: httpd.service: Main process exited, code=exited, st>
Jun 27 14:20:13 stapp03.stratos.xfusioncorp.com systemd[1]: httpd.service: Failed with result 'exit-code'.
Jun 27 14:20:13 stapp03.stratos.xfusioncorp.com systemd[1]: httpd.service: Service will not restart (restart se>
Jun 27 14:20:13 stapp03.stratos.xfusioncorp.com systemd[1]: httpd.service: Changed start -> failed
Jun 27 14:20:13 stapp03.stratos.xfusioncorp.com systemd[1]: httpd.service: Job 285 httpd.service/start finished>
Jun 27 14:20:13 stapp03.stratos.xfusioncorp.com systemd[1]: Failed to start The Apache HTTP Server.
Jun 27 14:20:13 stapp03.stratos.xfusioncorp.com systemd[1]: httpd.service: Unit entered failed state.
```

```bash
sudo vi /etc/httpd/conf/httpd.conf
```

## Restarted the service and checked for status

After restarting I got another message regarding a syntax error at line 124

```bash
sudo systemctl start mariadb
sudo systemctl status mariadb
```

```bash
Jun 27 14:21:46 stapp03.stratos.xfusioncorp.com httpd[3259]: AH00526: Syntax error on line 124 of /etc/httpd/co>
Jun 27 14:21:46 stapp03.stratos.xfusioncorp.com httpd[3259]: DocumentRoot '/var/www/html;' is not a directory, >
Jun 27 14:21:46 stapp03.stratos.xfusioncorp.com systemd[1]: httpd.service: Child 3259 belongs to httpd.service.
Jun 27 14:21:46 stapp03.stratos.xfusioncorp.com systemd[1]: httpd.service: Main process exited, code=exited, st>
Jun 27 14:21:46 stapp03.stratos.xfusioncorp.com systemd[1]: httpd.service: Failed with result 'exit-code'.
Jun 27 14:21:46 stapp03.stratos.xfusioncorp.com systemd[1]: httpd.service: Service will not restart (restart se>
Jun 27 14:21:46 stapp03.stratos.xfusioncorp.com systemd[1]: httpd.service: Changed start -> failed
Jun 27 14:21:46 stapp03.stratos.xfusioncorp.com systemd[1]: httpd.service: Job 325 httpd.service/start finished>
Jun 27 14:21:46 stapp03.stratos.xfusioncorp.com systemd[1]: Failed to start The Apache HTTP Server.
Jun 27 14:21:46 stapp03.stratos.xfusioncorp.com systemd[1]: httpd.service: Unit entered failed state.
```

```bash
sudo vi /etc/httpd/conf/httpd.conf
```

## Started the service

```bash
sudo systemctl start mariadb
sudo systemctl status mariadb
```
