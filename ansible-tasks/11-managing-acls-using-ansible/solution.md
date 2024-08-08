# Solution

## Check that the ansible module is installed

```bash
ansible-galaxy collection list
```

## To install

```bash
ansible-galaxy collection install ansible.posix
```

## Create the playbook file

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
