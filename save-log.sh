rm log.tar
rm -rf bin
docker tag registry.newben.net/dev/log registry.ekos.local/ekos/log
docker save registry.ekos.local/ekos/log -o log.tar
