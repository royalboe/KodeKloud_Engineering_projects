# Solution

## Run the following commands on the jumphost

- Check the current timezone setting:  
`` ssh tony@stapp01 sudo -S timedatectl ``  
- Change the current timezone setting to Pacific/Pohnpei  
`` 	ssh tony@stapp01 sudo -S timedatectl set-timezone Pacific/Pohnpei ``  
    
- Check the current timezone setting:  
`` ssh @stapp02 sudo -S timedatectl ``  
- Change the current timezone setting to Pacific/Pohnpei  
`` ssh steve@stapp01 sudo -S timedatectl set-timezone Pacific/Pohnpei ``  
  
- Check the current timezone setting:  
`` ssh banner@stapp03 sudo -S timedatectl ``  
- Change the current timezone setting to Pacific/Pohnpei  
`` 	ssh banner@stapp03 sudo -S timedatectl set-timezone Pacific/Pohnpei ``
