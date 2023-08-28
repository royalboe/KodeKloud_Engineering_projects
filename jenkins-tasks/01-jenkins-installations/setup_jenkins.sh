#!/bin/bash

# Update the system
sudo yum upgrade -y
sudo yum update -y
sudo yum install wget -y epel-release

# Add the Jenkins repository and import its GPG key
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

# Add required dependencies for the jenkins package
sudo yum install java-17-openjdk -y
sudo yum install jenkins -y
sudo systemctl daemon-reload

# Start and enable Jenkins service
sudo systemctl start jenkins
sudo systemctl enable jenkins
sudo systemctl status jenkins

# Print Jenkins initial admin password
# echo "Jenkins initial admin password:"
sudo cat /var/lib/jenkins/secrets/initialAdminPassword