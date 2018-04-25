name=`kubectl get pod -n ekos-plugin | grep ekos-monitor-server | awk '{print $1}'`
kubectl logs -f $name -n ekos-plugin
