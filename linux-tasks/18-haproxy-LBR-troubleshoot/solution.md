# Solution

## Login to the LBR Server

```bash
ssh loki@stlb01
```

## Check the status of the haproxy service

```bash
sudo systemctl status haproxy
```

## Start the haproxy service and check the status

```bash
sudo systemctl start haproxy
sudo systemctl status haproxy
```

## Edit the configuration file and uncomment backend app

The error is because the frontend cannot find a backend to communicate with

```bash
sudo vi /etc/haproxy/haproxy.cfg
```

## Restart the service and check the status

```bash
sudo systemctl start haproxy
sudo systemctl status haproxy
```
