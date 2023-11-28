# orchestrator

## Development

To run locally, start a Kubernetes cluster by running:

```console
# Use 2 nodes to mimic the subject request to run 2 VMs 
$ minikube start --nodes=2
...
$
```

Use the shell script `orchestrator.sh` to create the resources.
> Inside the script there is a command to expose a port to the cluster to be
> able to ping it from localhost

Useful commands:
- `kubectl get pods -w` - check which pods are running and "watch"
- `kubectl get services`
- `kubectl get statefulset` - check database
- `kubectl delete --all [deployments|services|statefulset|pvc]` - to delete the
  assets
