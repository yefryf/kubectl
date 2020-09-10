# kubectl
Docker Image for Kubectl

# Overview
This container provides the Kubernetes client kubectl which can be used to interact with a Kubernetes cluster

# Install
```
$ docker run --name kubectl yefryf/kubectl
```

# Usage
```
$ docker run -it -v ~/.kube/config:/root/.kube/config yefryf/kubectl
```
