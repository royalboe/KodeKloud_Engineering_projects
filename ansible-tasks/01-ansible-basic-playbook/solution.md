# Solution

## Create the playbook.yaml file and copy the content of [playbook.yaml](./playbook.yml)

```bash
vi /home/thor/ansible/playbook.yml
```

## Replace the contents of inventory with [inventory](./inventory)

```bash
vi /home/thor/ansible/inventory
```


## Run the playbook

```bash
cd ansible && ansible-playbook -i inventory playbook.yml
```
