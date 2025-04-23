# KUBERNETES NGINX PHP FPM SETUP

## Description

A new MySQL server needs to be deployed on Kubernetes cluster. The Nautilus DevOps team was working on to gather the requirements. Recently they were able to finalize the requirements and shared them with the team members to start working on it. Below you can find the details:



1.) Create a PersistentVolume mysql-pv, its capacity should be 250Mi, set other parameters as per your preference.


2.) Create a PersistentVolumeClaim to request this PersistentVolume storage. Name it as mysql-pv-claim and request a 250Mi of storage. Set other parameters as per your preference.


3.) Create a deployment named mysql-deployment, use any mysql image as per your preference. Mount the PersistentVolume at mount path /var/lib/mysql.


4.) Create a NodePort type service named mysql and set nodePort to 30007.


5.) Create a secret named mysql-root-pass having a key pair value, where key is password and its value is YUIidhb667, create another secret named mysql-user-pass having some key pair values, where frist key is username and its value is kodekloud_cap, second key is password and value is 8FmzjvFU6S, create one more secret named mysql-db-url, key name is database and value is kodekloud_db8


6.) Define some Environment variables within the container:


a) name: MYSQL_ROOT_PASSWORD, should pick value from secretKeyRef name: mysql-root-pass and key: password


b) name: MYSQL_DATABASE, should pick value from secretKeyRef name: mysql-db-url and key: database


c) name: MYSQL_USER, should pick value from secretKeyRef name: mysql-user-pass key key: username


d) name: MYSQL_PASSWORD, should pick value from secretKeyRef name: mysql-user-pass and key: password


Note: The kubectl utility on jump_host has been configured to work with the kubernetes cluster.The Nautilus Application Development team is planning to deploy one of the php-based applications on Kubernetes cluster. As per the recent discussion with DevOps team, they have decided to use nginx and phpfpm. Additionally, they also shared some custom configuration requirements. Below you can find more details. Please complete this task as per requirements mentioned below:



1) Create a service to expose this app, the service type must be NodePort, nodePort should be 30012.


2.) Create a config map named nginx-config for nginx.conf as we want to add some custom settings in nginx.conf.


a) Change the default port 80 to 8093 in nginx.conf.


b) Change the default document root /usr/share/nginx to /var/www/html in nginx.conf.


c) Update the directory index to index  index.html index.htm index.php in nginx.conf.


3.) Create a pod named nginx-phpfpm .


b) Create a shared volume named shared-files that will be used by both containers (nginx and phpfpm) also it should be a emptyDir volume.


c) Map the ConfigMap we declared above as a volume for nginx container. Name the volume as nginx-config-volume, mount path should be /etc/nginx/nginx.conf and subPath should be nginx.conf


d) Nginx container should be named as nginx-container and it should use nginx:latest image. PhpFPM container should be named as php-fpm-container and it should use php:8.2-fpm-alpine image.


e) The shared volume shared-files should be mounted at /var/www/html location in both containers. Copy /opt/index.php from jump host to the nginx document root inside the nginx container, once done you can access the app using App button on the top bar.


Before clicking on finish button always make sure to check if all pods are in running state.


You can use any labels as per your choice.


Note: The kubectl utility on jump_host has been configured to work with the kubernetes cluster.