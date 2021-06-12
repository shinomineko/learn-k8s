## Deploy a deployment

### Using `kubectl create`

```console
# create the deploymment
$ kubectl create deployment hello --image=shinomineko/hello-service

# get and describe deploymment
$ kubectl get deployment
$ kubectl describe deployment hello

# get and describe pod
$ kubectl get pod
$ kubectl describe pod <pod-name>

# access the app
$ curl http://<pod-ip>:8080

# delete the pod
$ kubectl delete pod <pod-name>

# get and describe pod again
$ kubectl get pod
$ kubectl describe pod <pod-name>

# delete the deployment
$ kubectl delete deployment hello
```

### Using manifest

```console
# generate deployment manifest
$ kubectl create deployment hello --image=shinomineko/hello-service --dry-run=client -o yaml > hello-deployment.yml

# create the deployment
$ kubectl create -f hello-deployment.yml

# delete the deployment
$ kubectl delete -f hello-deployment.yml
```
