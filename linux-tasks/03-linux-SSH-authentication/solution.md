# Solution

## Check if there's an existing ssh key for user thor

```bash
ls -al ~/.ssh/id_*.pub
```

## Create a new key using the command below:  

```bash
ssh-keygen -t rsa 
```  

## Copy this public key to all remote servers for a passwordless connection: 

```bash
    ssh-copy-id tony@stapp01
    ssh-copy-id steve@stapp02  
    ssh-copy-id banner@stapp03  
```

## For above command, here's the syntax

``` ssh-copy-id [remote_user]@[server_ip_address] ```  

## Now try logging in without passoward to test the password-less ssh connectivity

```bash
ssh tony@stapp01
ssh steve@stapp02
ssh banner@stapp03
```
