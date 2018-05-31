rm portal.tar
rm -rf bin
docker tag registry.newben.net/dev/portal registry.ekos.local/ekos/portal
docker save registry.ekos.local/ekos/portal -o portal.tar
