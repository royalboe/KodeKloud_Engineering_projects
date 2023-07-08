# Solution

- Login into the dbserver

```
ssh peter@stdb01
```

- Install Postgresql
```
sudo yum -y install postgresql-server postgresql-contrib
```

- Initialize DB
```
sudo postgresql-setup initdb
```

- Enable and Start service
```
sudo systemctl enable postgresql; sudo systemctl start postgresql
```

- Login to the Postgres
```
sudo -u postgres psql
```

- Create new user
```
CREATE USER kodekloud_joy WITH PASSWORD 'TmPcZjtRQx';
```

- Create database
```
CREATE DATABASE kodekloud_db4;
```

- Grant privileges to the user
```
GRANT ALL PRIVILEGES ON DATABASE "kodekloud_db4" to kodekloud_joy;
```

- Exit postgres
```
\q
```

- Edit postgres conf file
```
vi /var/lib/pgsql/data/postgresql.conf
```

- Add this line / or look for it and uncomment it
```
listen_addresses='localhost'
```

- Edit pg_hba.conf
```
vi /var/lib/pgsql/data/pg_hba.conf
```

- Edit it at the last line by using md5 instead of ident such that ot looks like this
```
local   all             all                                             md5

host    all             all             127.0.0.1/32            md5

host    all             all             ::1/128                    md5
```

- Restart Postgresql
```
sudo systemctl restart postgresql
```
