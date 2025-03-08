# MANAGE SECRETS IN KUBERNETES

## Description

The Nautilus DevOps team is working to deploy some tools in Kubernetes cluster. Some of the tools are licence based so that licence information needs to be stored securely within Kubernetes cluster. Therefore, the team wants to utilize Kubernetes secrets to store those secrets. Below you can find more details about the requirements:



We already have a secret key file news.txt under /opt location on jump host. Create a generic secret named news, it should contain the password/license-number present in news.txt file.


Also create a pod named secret-devops.


Configure pod's spec as container name should be secret-container-devops, image should be debian preferably with latest tag (remember to mention the tag with image). Use sleep command for container so that it remains in running state. Consume the created secret and mount it under /opt/games within the container.


To verify you can exec into the container secret-container-devops, to check the secret key under the mounted path /opt/games. Before hitting the Check button please make sure pod/pods are in running state, also validation can take some time to complete so keep patience.

Note: The kubectl utility on jump_host has been configured to work with the kubernetes cluster.