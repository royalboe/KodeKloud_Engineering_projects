# Solution

## Move into the playbook folder

```bash
cd playbook
```

## Create the Inventory file and add the contents of [inventory](./inventory)

```bash
vi inventory
```

## Create the playbook and add contents of [playbook](./playbook.yml)

```bash
vi playbook.yml
```

## Verify

```bash
ansible-playbook -i inventory playbook.yml
```
