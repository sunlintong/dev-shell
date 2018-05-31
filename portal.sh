name=`kubectl get pod -n kube-system | grep ekos-portal-server | awk '{print $1}'`
docker load -i portal.tar
rm portal.tar
docker push registry.ekos.local/ekos/portal
kubectl delete pod $name -n kube-system
kubectl get pod -n kube-system | grep portal
