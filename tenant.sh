name=`kubectl get pod -n ekos-plugin | grep ekos-tenant-server | awk '{print $1}'`
docker load -i tenant.tar
rm tenant.tar
docker push registry.ekos.local/ekos/tenant
kubectl delete pod $name -n ekos-plugin
kubectl get pod -n ekos-plugin | grep tenant
