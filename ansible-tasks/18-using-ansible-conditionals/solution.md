# Solution


## Create the playbook file and copy the content here [playbook](./playbook.yml)

```bash
vi playbook.yml
```

## Run playbook

```bash
ansible-playbook -i inventory playbook.yml
```

## Validate that the file exists on target server 1

```bash
ansible stapp01 -a "cat /opt/dba/blog.txt" -i inventory
```

## Validate that the file exists on target server 2

```bash
ansible stapp02 -a "cat /opt/dba/story.txt" -i inventory
```

## Validate that the file exists on target server 3

```bash
ansible stapp03 -a "cat /opt/dba/media.txt" -i inventory
```
