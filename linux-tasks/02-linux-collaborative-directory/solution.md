# Solution

## SSH into server

```bash
ssh tony@stapp01
sudo su -
```

## Create directory according to task

```bash
mkdir -p /sysops/data 
```

## Change ownership of directory 

```bash
chgrp -R sysops /sysops/data
```

## Change directory file permissions

```bash
chmod -r 2770 /sysops/data
```

Note:

        2 - Special Permission. set group id.

        7 -  4+2+1 = 7 (4= read, 2 = write, 1 = execute). User (root) Permission

        7 -  4+2+1 = 7 (4= read, 2 = write, 1 = execute). Group Permission


        0 - Other users. (zero permission).  
        

![image](/images/collab.PNG)