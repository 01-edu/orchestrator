#!/bin/bash

function help() {
    echo "orchestrator CLI v0.0.1"
    echo
    echo "Manage a Kubernetes cluster in a VM kluster running K3s"
    echo
    echo "USAGE"
    echo "  $./orchestrator.sh COMMAND"
    echo 
    echo "Available commands:"
    echo "  create  Create the VM cluster using the local Vagrantfile config"
    echo "  start   Start the Kubernetes cluster on the VM cluster"
    echo "  stop    Stop the Kubernetes cluster on the VM cluster"
    echo
}

if [[ $# -ne 1 ]]; then
    help
    exit 1
fi

case $1 in 
    "create")
        echo create resources
        mkdir -p ./k3s
        vagrant up
        ;;
    "start")
        echo start cluster
        vagrant up
        # TODO: make this cleaner
        vagrant ssh master -c "kubectl apply -f /manifests/"

        ## Use the following for local test
        #kubectl port-forward $(kubectl get pods | grep api-gateway \
         #| awk '{print $1}') 3000:3000 
        ;;
    "stop")
        echo stop cluster
        # TODO: which command to use here?
        vagrant suspend
        ;;
    "clean")
        echo remove cluster and resources
        vagrant destroy -f 
        ;;
    *)
        echo "${1} is an unknown command"
        help
        exit 1
        ;;
esac
