# Solution

## Create the inventory and playbook files

```bash
touch inventory playbook.yml
```

## Check if `community.general collection` is installed, if not install it

```bash
ansible-galaxy collection list
ansible-galaxy collection install community.general
```

### Run the playbook

```bash
ansible-playbook -i inventory playbook.yml
```
