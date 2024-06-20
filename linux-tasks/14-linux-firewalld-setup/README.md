# Linux Firewalld Setup

## Description

Install and configure firewalld on all app servers.

### Steps

a. Allow all incoming connections on Nginx port 80.

b. Block all incoming to apache server on port 8080.

c. All rules must be permanent.

d. Zone should be public.

e. If Apache or Nginx services aren't running already, please make sure to start them.
