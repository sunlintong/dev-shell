#!/bin/bash

if [ $# = 0 ]; then
    name="paas"
else
    name=$1
fi

cd $GOPATH/src/git.ghostcloud.cn/ekos/ekos-plugin-$name
rm -rf bin
rm $name.tar

docker tag registry.newben.net/dev/$name registry.ekos.local/ekos/$name
docker save registry.ekos.local/ekos/$name -o $name.tar
docker rmi registry.newben.net/dev/$name
docker rmi registry.ekos.local/ekos/$name
