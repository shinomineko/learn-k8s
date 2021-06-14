## Deploy a deployment with services

```console
# create the deployment
$ kubectl apply -f deployment.yml

# create both type of services from manifests
$ kubectl apply -f clusterip.yml # ClusterIP service
$ kubectl apply -f nodeport.yml  # NodePort service

# OR create services using `kubectl expose`
$ kubectl expose deployment hello --port=8080                 # ClusterIP service
$ kubectl expose deployment hello --port=8080 --type=NodePort # NodePort service

# run a toolbox pod
$ kubectl run toolbox --image=shinomineko/toolbox -- sleep infinity

# wait for toolbox pod to be ready
$ kubectl get pod

# enter the toolbox pod
$ kubectl exec -it toolbox -- bash

# try calling the hello services from inside toolbox container
bash-5.1# curl http://hello-clusterip.default.svc.cluster.local:8080 # or you can try calling the
nodeport service, the result should be similar

bash-5.1# curl http://hello-clusterip.default.svc:8080

bash-5.1# curl http://hello-clusterip.default

bash-5.1# curl http://hello-clusterip:8080

# exit the toolbox and scale up the deployment
bash-5.1# exit
$ kubectl scale deployment hello --replicas=3 # or you can edit the `deployment.yml` and re-apply

# get pods
$ kubectl get pod

# enter the toolbox pod again
$ kubectl exec -it toolbox -- bash

# try calling the hello services again repeatly and see the responses
bash-5.1# curl http://hello-clusterip:8080
```
