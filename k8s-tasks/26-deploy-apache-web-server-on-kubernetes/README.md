# DEPLOY APACHE WEB SERVER ON KUBERNETES

## Description

There is an application that needs to be deployed on Kubernetes cluster under Apache web server. The Nautilus application development team has asked the DevOps team to deploy it. We need to develop a template as per requirements mentioned below:


Create a namespace named as httpd-namespace-nautilus.

Create a deployment named as httpd-deployment-nautilus under newly created namespace. For the deployment use httpd image with latest tag only and remember to mention the tag i.e httpd:latest, and make sure replica counts are 2.

Create a service named as httpd-service-nautilus under same namespace to expose the deployment, nodePort should be 30004.

Note: The kubectl utility on jump_host has been configured to work with the kubernetes cluster.
