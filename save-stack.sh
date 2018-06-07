rm stack.tar
rm -rf bin
docker tag registry.newben.net/dev/stack registry.ekos.local/ekos/stack
docker save registry.ekos.local/ekos/stack -o stack.tar
