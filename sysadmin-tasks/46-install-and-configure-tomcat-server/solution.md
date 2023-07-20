## Login to the stapp01 server

```bash
ssh tony@stapp01
```

## Install tomcat

```bash
sudo yum install -y tomcat
```

## Configure Tomcat server to listen on port 6300

```bash
sudo vi /usr/share/tomcat/conf/server

Edit the two port numbers on the connector tag to the desired port number

## Copy the files from the jumphost

```bash
scp /tmp/ROOT.war tony@stapp01:/tmp
```

## Go back to the stapp01 server and copy the files to the tomcat directory

```bash
mv /tmp/ROOT.war /usr/share/tomcat/webapps
```

## Start and enable tomcat

```bash
sudo systemctl start tomcat && sudo systemctly enable tomcat
```
