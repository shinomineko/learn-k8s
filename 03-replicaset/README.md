## Deploy a replicaset

### Using manifest

```console
# create the replicaset
$ kubectl create -f replicaset.yml

# get the replicaset
$ kubectl get replicaset
$ kubectl describe replicaset hello-replicaset

# get the pods
$ kubectl get pod

# delete the replicaset
$ kubectl delete -f replicaset.yml
```
