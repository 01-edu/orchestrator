#!/bin/bash

if [[ $# -ne 1 ]]; then
    echo "Run the script as follow"
    echo "./orchestrator.sh [create|start|stop]"
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
        echo unknown argument
        exit 1
        ;;
esac
