# Solution

Log in to the backup server and switch to the root user:  

```bash
ssh clint@stbkp01 
```  

```bash
sudo su - 
```

Using the linux ``` sed ``` command, replace all occurances of the string About to Maritime on the XML file /root/nautilus.xml:  

```bash
sed -i 's/Random/LUSV/g' /root/nautilus.xml 
```  

Confirm the changes:  

```bash
cat /root/nautilus.xml | grep LUSV 
```
