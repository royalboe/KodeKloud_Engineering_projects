# Install and Configure PostgreSQL

## Description
The Nautilus application development team has shared that they are planning to deploy one newly developed application on Nautilus infra in Stratos DC. The application uses PostgreSQL database, so as a pre-requisite we need to set up PostgreSQL database server as per requirements shared below:

### Steps

* Install and configure PostgreSQL database on Nautilus database server.

* Create a database user kodekloud_joy and set its password to B4zNgHA7Ya.

* Create a database kodekloud_db4 and grant full permissions to user kodekloud_joy on this database.

* Make appropriate settings to allow all local clients (local socket connections) to connect to the kodekloud_db4 database through kodekloud_joy user using md5 method (Please do not try to encrypt password with md5sum).

* At the end its good to test the db connection using these new credentials from root user or server's sudo user.
