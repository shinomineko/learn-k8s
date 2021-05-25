## Deploy a single pod

### Using `kubectl run`

```console
# create the pod
$ kubectl run hello --image=shinomineko/hello-service

# get and describe pod
$ kubectl get pod
$ kubectl describe pod hello

# access the app
$ curl http://<pod-ip>:8080

# delete the pod
$ kubectl delete pod hello
```

### Using manifest

```console
# generate pod manifest
$ kubectl run hello --image=shinomineko/hello-service --dry-run=client -o yaml > hello-pod.yml

# create the pod
$ kubectl create -f hello-pod.yml

# get and describe pod
$ kubectl get pod
$ kubectl describe pod hello

# access the app
$ curl http://<pod-ip>:8080

# delete the pod
$ kubectl delete -f hello-pod.yml
```
