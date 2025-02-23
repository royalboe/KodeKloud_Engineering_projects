# Solution

## Edit the '''ansible.cfg''' file in the playbooks folder and add the line to the end

'''vault_password_file = /home/thor/playbooks/secrets/vault.txt'''

## Edit the playbook file to what is in [playbook](./playbook.yml)

```bash
vi playbook.yml
```

## Edit the tasks/main file and add what is in [main.yml](./role/httpd/tasks/main.yml)

```bash
vi role/httpd/tasks/main.yml
```

## Create the jinja2 template file

```bash
vi role/httpd/template/index.html.j2
```

## Run playbook

```bash
ansible-playbook -i inventory playbook.yml
```

## Validate that the file exists on target server

```bash
ansible stapp02 -a "cat /var/www/html/index.html" -i inventory
```
