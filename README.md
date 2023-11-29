# orchestrator

More information about the project
[here](https://github.com/01-edu/public/blob/master/subjects/devops/orchestrator/README.md)

## Setup

In order to be able to run this application you need to have the following
programs installed on your machine:

- [Vagrant](https://developer.hashicorp.com/vagrant/docs/installation).
- [VirtualBox](https://www.virtualbox.org/wiki/Downloads).

To interact with the application, it is recommended to install the following
programs, or any equivalent ones:

- [Postman](https://www.postman.com/downloads/), or any other tool to
  programmatically test API endpoints.
- [kubectl](https://kubernetes.io/docs/tasks/tools/#kubectl) to be able to
  interact with the Kubernetes cluster from your machine. Check [this cheat
  sheet](https://kubernetes.io/docs/reference/kubectl/cheatsheet/) to get an
  idea of some useful commands.
- [*optional*] [minikube](https://kubernetes.io/docs/tasks/tools/#minikube) to
  deploy the Kubernetes cluster on your machine instead of the VM cluster.

To run and mange the Kubernetes cluster on the VM cluster, use the provided 
`./orchestrator.sh` script.

## Local development

To run locally, start a Kubernetes cluster by running:

```console
# Use 2 nodes to mimic the subject request to run 2 VMs 
$ minikube start --nodes=2
...
$
```

> If willing to deploy the Kubernetes on the local cluster, you must run
> `kubectl` commands. The `./orchestrator.sh` script is not going to work
