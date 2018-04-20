name=`kubectl get pod -n ekos-plugin | grep ekos-monitor-server | awk '{print $1}'`
docker load -i monitor.tar
rm monitor.tar
docker push registry.ekos.local/ekos/monitor
kubectl delete pod $name -n ekos-plugin
kubectl get pod -n ekos-plugin | grep monitor
