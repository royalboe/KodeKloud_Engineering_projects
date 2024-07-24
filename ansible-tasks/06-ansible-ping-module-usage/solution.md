ssh-keygen -t rsa -b 2048

ssh-copy-id banner@stapp03

ansible stapp03 -m ping -i inventory
stapp02 ansible_host=172.16.238.11 ansible_ssh_user=steve ansible_ssh_pass=Am3ric@