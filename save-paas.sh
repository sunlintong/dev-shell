rm paas.tar
rm -rf bin
docker tag registry.newben.net/dev/paas registry.ekos.local/ekos/paas
docker save registry.ekos.local/ekos/paas -o paas.tar
