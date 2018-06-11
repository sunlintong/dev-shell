name=`kubectl get pod -n ekos-plugin | grep ekos-log-server | awk '{print $1}'`
docker load -i log.tar
rm log.tar
docker push registry.ekos.local/ekos/log
kubectl delete pod $name -n ekos-plugin
kubectl get pod -n ekos-plugin | grep log
