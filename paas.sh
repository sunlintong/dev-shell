name=`kubectl get pod -n ekos-plugin | grep ekos-paas-server | awk '{print $1}'`
docker load -i paas.tar
rm paas.tar
docker push registry.ekos.local/ekos/paas
kubectl delete pod $name -n ekos-plugin
kubectl get pod -n ekos-plugin | grep paas
