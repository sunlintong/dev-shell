#!/bin/bash
#第一个参数传镜像tar所在ip，第二个传
if [ $# = 0 ]; then
    echo "请指定ip和要换的项目名"
    exit 1
elif [ $# = 1 ]; then
    ip="192.168.0.64"
    name=$1
else
    ip=$1
    name=$2
fi

gopath="/goworks"
podname=`kubectl get pod -n ekos-plugin | grep ekos-$name-server | awk '{print $1}'`

scp $ip:$gopath/src/git.ghostcloud.cn/ekos/ekos-plugin-$name/$name.tar .
docker load -i $name.tar
rm $name.tar
docker push registry.ekos.local/ekos/$name
docker rmi registry.ekos.local/ekos/$name
kubectl delete pod $podname -n ekos-plugin
sleep 10
kubectl get pod -n ekos-plugin | grep $name
