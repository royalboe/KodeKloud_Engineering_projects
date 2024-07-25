# Solution

## Create the inventory and playbook files

```bash
touch inventory playbook.yml
```

### Run the playbook

```bash
ansible-playbook -i inventory playbook.yml
```

## Verify the automation

```bash
ansible all -a "ls -ltr /opt/itadmin/" -i inventory
```
