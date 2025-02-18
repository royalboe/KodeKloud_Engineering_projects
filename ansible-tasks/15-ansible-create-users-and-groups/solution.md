# Solution

## Edit the '''ansible.cfg''' file in the playbooks folder and add the line to the end

'''vault_password_file = /home/thor/playbooks/secrets/vault.txt'''

## Create the playbook file

```bash
touch playbooks/index.yml
```

### Run the playbook

```bash
ansible-playbook -i inventory index.yml
```
