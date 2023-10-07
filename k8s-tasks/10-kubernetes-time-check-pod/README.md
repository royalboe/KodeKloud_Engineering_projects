# Kubernetes Time Check Pod

## Description

The Nautilus DevOps team want to create a time check pod in a particular Kubernetes namespace and record the logs. This might be initially used only for existing purposes, but later can be implemented in a n existing cluster. Please find more details beow about the task and perform it.

### Steps

Create a pod called time-check in the devops namespace. This pod should run a container called time-check container should use the busybox image with latest tag only and remember to mention tag i.e busybox:latest.


Create a config map called time-config with the data TIME_FREQ=10 in the same namespace, and volume name should be log-volume.

The time-check container should run the command: while true; do date; sleep $TIME_FREQ;done and should write the result to the location /opt/security/time/time-check.log.

The path /opt/security/time on the pod should mount a volume that lasts the lifetime of this pod.


