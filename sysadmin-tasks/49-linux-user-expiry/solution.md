## ssh into app server 2 and switch to root:

```bash
ssh steve@stapp01
```

```bash
sudo su -
```

# Create a temporary user names anita:  

```bash
useradd -e "2021-01-28" ammar
```  

Verify the user account expiration details using the ``chage`` command:  

```bash
chage -l ammar
```
