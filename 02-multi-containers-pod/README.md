## Deploy a multi containers pod

```console
$ kubectl create -f multi-containers-pod.yml

$ kubectl get pod
$ kubectl describe pod multi-containers-single-app

$ kubectl logs multi-containers-single-app -c counter

$ kubectl logs multi-containers-single-app -c poller

$ kubectl delete -f multi-containers-pod.yml
```
