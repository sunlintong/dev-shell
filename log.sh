#!/bin/bash
if [ $# = 0 ]; then
	name="paas"
else
	name=$1
fi

pname=`kubectl get pod -n ekos-plugin | grep ekos-$name-server | awk '{print $1}'`
kubectl logs -f $pname -n ekos-plugin
