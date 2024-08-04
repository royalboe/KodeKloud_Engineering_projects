# Solution

## Verify the That file isn't present

```bash
ansible all -a "ls -ltr /opt/data/" -i inventory
```

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
ansible all -a "ls -ltr /opt/data/" -i inventory
```
