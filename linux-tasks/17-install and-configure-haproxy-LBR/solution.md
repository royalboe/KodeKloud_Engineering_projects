# Solution

## HA Proxy

HAProxy, which translates to High Availability Proxy, is an open-source software that acts as a load balancer and proxy server for TCP and HTTP-based applications. It distributes the incoming traffic/workload across multiple web servers, enhancing performance and ensures that the web applications remain available even in the event of failure to one or more of the servers. This not only enhances the performance but also ensures that your web application remains available even if one or more servers fail.

The important concepts under HAProxy are

- Backend
- Frontend
- ACL

The Access Control List is used to evaluate conditions before routing the traffic to the backend.
The Backend is a set of servers that receives the forwarded requests from the frontend. 
The Frontend defines how incoming traffic is received and routed to the backend. It specifies the IP and port on which HAProxy listens for incoming connections.

Further readings [Web Hosting Geeks](https://webhostinggeeks.com/howto/how-to-install-haproxy-on-centos/) and [Digital Ocean](https://www.digitalocean.com/community/tutorials/an-introduction-to-haproxy-and-load-balancing-concepts)

### Login to LoadBalancer Server

```bash
ssh loki@stlb01
```

### Update system

```bash
yum update -y
```

### Install EPEL Repository

```bash
sudo yum -y install epel-release
```

### Install HAProxy

```bash
sudo yum -y install haproxy – Installs HAProxy.
```

### Edit configuration file and add the below under frontend and backend respectively

```bash
sudo vi /etc/haproxy/haproxy.cfg
```

```bash
frontend http_front
   bind *:80
   default_backend http_back

backend http_back
   balance roundrobin
   server web1 172.16.238.10:8086 check
   server web2 172.16.238.11:8086 check
   server web3 172.16.238.12:8086 check
```

### Start service and enable it

```bash
sudo systemctl start haproxy
sudo systemctl enable haproxy
```

