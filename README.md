# Basestation för k3s 

This is the repo for the basestation of k3s. It includes all the manifest and helmcharts to setup and deploy service into the cluster


# Start with setting up a k3s cluster

Follow the guide and setup a running k3s cluster

# Use the image to admin
This repo contains a docker image with all the tools need to control the cluster.
To build and use the image use the docker compose file


## Build the admin image


```
docker compose build
```

## Use the image
First add the k3s admin config.

```
cat /etc/rancher/k3s/k3s.yaml
```

Add the content of the file in 

```
~/.kube/basestation/config
```

Change the ip of the node to match you host


```
server: https://10.100.0.1:6443
```

Start and connect to the cluster

```
docker compose run admin /bin/bash

```


```
root@76c8b20e4225:/# kubectl get nodes
NAME         STATUS   ROLES                  AGE     VERSION
k3s-garage   Ready    <none>                 4d10h   v1.25.5+k3s1
fw1          Ready    control-plane,master   4d23h   v1.25.5+k3s1
root@76c8b20e4225:/# 
```


