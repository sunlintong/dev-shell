name=`kubectl get pod -n ekos-plugin | grep ekos-stack-server | awk '{print $1}'`
docker load -i stack.tar
rm stack.tar
docker push registry.ekos.local/ekos/stack
kubectl delete pod $name -n ekos-plugin
kubectl get pod -n ekos-plugin | grep stack
